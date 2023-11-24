.class public Lio/netty/handler/codec/http/HttpVersion;
.super Ljava/lang/Object;
.source "HttpVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/netty/handler/codec/http/HttpVersion;",
        ">;"
    }
.end annotation


# static fields
.field public static final HTTP_1_0:Lio/netty/handler/codec/http/HttpVersion;

.field private static final HTTP_1_0_STRING:Ljava/lang/String; = "HTTP/1.0"

.field public static final HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

.field private static final HTTP_1_1_STRING:Ljava/lang/String; = "HTTP/1.1"

.field private static final VERSION_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final bytes:[B

.field private final keepAliveDefault:Z

.field private final majorVersion:I

.field private final minorVersion:I

.field private final protocolName:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "(\\S+)/(\\d+)\\.(\\d+)"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 31
    sput-object v0, Lio/netty/handler/codec/http/HttpVersion;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 40
    new-instance v0, Lio/netty/handler/codec/http/HttpVersion;

    const-string v2, "HTTP"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/HttpVersion;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_0:Lio/netty/handler/codec/http/HttpVersion;

    .line 45
    new-instance v0, Lio/netty/handler/codec/http/HttpVersion;

    const-string v8, "HTTP"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/netty/handler/codec/http/HttpVersion;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 155
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpVersion;-><init>(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 170
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_1

    .line 184
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpVersion;->protocolName:Ljava/lang/String;

    .line 185
    iput p2, p0, Lio/netty/handler/codec/http/HttpVersion;->majorVersion:I

    .line 186
    iput p3, p0, Lio/netty/handler/codec/http/HttpVersion;->minorVersion:I

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpVersion;->text:Ljava/lang/String;

    .line 188
    iput-boolean p4, p0, Lio/netty/handler/codec/http/HttpVersion;->keepAliveDefault:Z

    if-eqz p5, :cond_0

    .line 191
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpVersion;->text:Ljava/lang/String;

    sget-object p2, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpVersion;->bytes:[B

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpVersion;->bytes:[B

    :goto_1
    return-void

    .line 181
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative minorVersion"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative majorVersion"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_4

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid character in protocolName"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "empty protocolName"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "protocolName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    sget-object v0, Lio/netty/handler/codec/http/HttpVersion;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 133
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpVersion;->protocolName:Ljava/lang/String;

    const/4 p1, 0x2

    .line 134
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http/HttpVersion;->majorVersion:I

    const/4 p1, 0x3

    .line 135
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http/HttpVersion;->minorVersion:I

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/netty/handler/codec/http/HttpVersion;->protocolName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/netty/handler/codec/http/HttpVersion;->majorVersion:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/netty/handler/codec/http/HttpVersion;->minorVersion:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpVersion;->text:Ljava/lang/String;

    .line 137
    iput-boolean p2, p0, Lio/netty/handler/codec/http/HttpVersion;->keepAliveDefault:Z

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpVersion;->bytes:[B

    return-void

    .line 130
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid version format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 125
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "empty text"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "text"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpVersion;
    .locals 2

    if-eqz p0, :cond_2

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpVersion;->version0(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpVersion;->version0(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lio/netty/handler/codec/http/HttpVersion;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/HttpVersion;-><init>(Ljava/lang/String;Z)V

    :cond_0
    return-object v0

    .line 63
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "text is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "text"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static version0(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpVersion;
    .locals 1

    const-string v0, "HTTP/1.1"

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object p0, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    return-object p0

    :cond_0
    const-string v0, "HTTP/1.0"

    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 95
    sget-object p0, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_0:Lio/netty/handler/codec/http/HttpVersion;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lio/netty/handler/codec/http/HttpVersion;)I
    .locals 2

    .line 261
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->protocolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpVersion;->protocolName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->majorVersion()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpVersion;->majorVersion()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    .line 271
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->minorVersion()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpVersion;->minorVersion()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lio/netty/handler/codec/http/HttpVersion;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpVersion;->compareTo(Lio/netty/handler/codec/http/HttpVersion;)I

    move-result p1

    return p1
.end method

.method encode(Lio/netty/buffer/ByteBuf;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpVersion;->bytes:[B

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpVersion;->text:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->encodeAscii0(Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpVersion;->bytes:[B

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 249
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpVersion;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 253
    :cond_0
    check-cast p1, Lio/netty/handler/codec/http/HttpVersion;

    .line 254
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->minorVersion()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpVersion;->minorVersion()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 255
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->majorVersion()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpVersion;->majorVersion()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 256
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->protocolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpVersion;->protocolName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 243
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->protocolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->majorVersion()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 244
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->minorVersion()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isKeepAliveDefault()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpVersion;->keepAliveDefault:Z

    return v0
.end method

.method public majorVersion()I
    .locals 1

    .line 208
    iget v0, p0, Lio/netty/handler/codec/http/HttpVersion;->majorVersion:I

    return v0
.end method

.method public minorVersion()I
    .locals 1

    .line 215
    iget v0, p0, Lio/netty/handler/codec/http/HttpVersion;->minorVersion:I

    return v0
.end method

.method public protocolName()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpVersion;->protocolName:Ljava/lang/String;

    return-object v0
.end method

.method public text()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpVersion;->text:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 238
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/netease/ntunisdk/okhttp3/MultipartBody;
.super Lcom/netease/ntunisdk/okhttp3/RequestBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;,
        Lcom/netease/ntunisdk/okhttp3/MultipartBody$Part;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lcom/netease/ntunisdk/okhttp3/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lcom/netease/ntunisdk/okhttp3/MediaType;

.field public static final FORM:Lcom/netease/ntunisdk/okhttp3/MediaType;

.field public static final MIXED:Lcom/netease/ntunisdk/okhttp3/MediaType;

.field public static final PARALLEL:Lcom/netease/ntunisdk/okhttp3/MediaType;


# instance fields
.field private final boundary:Lcom/netease/ntunisdk/okio/ByteString;

.field private contentLength:J

.field private final contentType:Lcom/netease/ntunisdk/okhttp3/MediaType;

.field private final originalType:Lcom/netease/ntunisdk/okhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/MediaType;->get(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->MIXED:Lcom/netease/ntunisdk/okhttp3/MediaType;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/MediaType;->get(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->ALTERNATIVE:Lcom/netease/ntunisdk/okhttp3/MediaType;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/MediaType;->get(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->DIGEST:Lcom/netease/ntunisdk/okhttp3/MediaType;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/MediaType;->get(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->PARALLEL:Lcom/netease/ntunisdk/okhttp3/MediaType;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/MediaType;->get(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->FORM:Lcom/netease/ntunisdk/okhttp3/MediaType;

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->COLONSPACE:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->CRLF:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->DASHDASH:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lcom/netease/ntunisdk/okio/ByteString;Lcom/netease/ntunisdk/okhttp3/MediaType;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/okio/ByteString;",
            "Lcom/netease/ntunisdk/okhttp3/MediaType;",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/netease/ntunisdk/okhttp3/RequestBody;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->contentLength:J

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->boundary:Lcom/netease/ntunisdk/okio/ByteString;

    iput-object p2, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->originalType:Lcom/netease/ntunisdk/okhttp3/MediaType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/okhttp3/MediaType;->get(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->contentType:Lcom/netease/ntunisdk/okhttp3/MediaType;

    invoke-static {p3}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->parts:Ljava/util/List;

    return-void
.end method

.method static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    if-eq v3, v0, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v3, "%22"

    goto :goto_1

    :cond_1
    const-string v3, "%0D"

    goto :goto_1

    :cond_2
    const-string v3, "%0A"

    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private writeOrCountBytes(Lcom/netease/ntunisdk/okio/BufferedSink;Z)J
    .locals 12
    .param p1    # Lcom/netease/ntunisdk/okio/BufferedSink;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance p1, Lcom/netease/ntunisdk/okio/Buffer;

    invoke-direct {p1}, Lcom/netease/ntunisdk/okio/Buffer;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    iget-object v6, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Part;

    iget-object v7, v6, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Part;->headers:Lcom/netease/ntunisdk/okhttp3/Headers;

    iget-object v6, v6, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Part;->body:Lcom/netease/ntunisdk/okhttp3/RequestBody;

    sget-object v8, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v8}, Lcom/netease/ntunisdk/okio/BufferedSink;->write([B)Lcom/netease/ntunisdk/okio/BufferedSink;

    iget-object v8, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->boundary:Lcom/netease/ntunisdk/okio/ByteString;

    invoke-interface {p1, v8}, Lcom/netease/ntunisdk/okio/BufferedSink;->write(Lcom/netease/ntunisdk/okio/ByteString;)Lcom/netease/ntunisdk/okio/BufferedSink;

    sget-object v8, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v8}, Lcom/netease/ntunisdk/okio/BufferedSink;->write([B)Lcom/netease/ntunisdk/okio/BufferedSink;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/netease/ntunisdk/okhttp3/Headers;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_1

    invoke-virtual {v7, v9}, Lcom/netease/ntunisdk/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object v10

    sget-object v11, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->COLONSPACE:[B

    invoke-interface {v10, v11}, Lcom/netease/ntunisdk/okio/BufferedSink;->write([B)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object v10

    invoke-virtual {v7, v9}, Lcom/netease/ntunisdk/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object v10

    sget-object v11, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v10, v11}, Lcom/netease/ntunisdk/okio/BufferedSink;->write([B)Lcom/netease/ntunisdk/okio/BufferedSink;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lcom/netease/ntunisdk/okhttp3/RequestBody;->contentType()Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    invoke-interface {p1, v8}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object v8

    invoke-virtual {v7}, Lcom/netease/ntunisdk/okhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object v7

    sget-object v8, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v7, v8}, Lcom/netease/ntunisdk/okio/BufferedSink;->write([B)Lcom/netease/ntunisdk/okio/BufferedSink;

    :cond_2
    invoke-virtual {v6}, Lcom/netease/ntunisdk/okhttp3/RequestBody;->contentLength()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    invoke-interface {p1, v9}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeDecimalLong(J)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object v9

    sget-object v10, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v9, v10}, Lcom/netease/ntunisdk/okio/BufferedSink;->write([B)Lcom/netease/ntunisdk/okio/BufferedSink;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/Buffer;->clear()V

    return-wide v9

    :cond_4
    :goto_3
    sget-object v9, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v9}, Lcom/netease/ntunisdk/okio/BufferedSink;->write([B)Lcom/netease/ntunisdk/okio/BufferedSink;

    if-eqz p2, :cond_5

    add-long/2addr v4, v7

    goto :goto_4

    :cond_5
    invoke-virtual {v6, p1}, Lcom/netease/ntunisdk/okhttp3/RequestBody;->writeTo(Lcom/netease/ntunisdk/okio/BufferedSink;)V

    :goto_4
    sget-object v6, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v6}, Lcom/netease/ntunisdk/okio/BufferedSink;->write([B)Lcom/netease/ntunisdk/okio/BufferedSink;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    sget-object v1, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v1}, Lcom/netease/ntunisdk/okio/BufferedSink;->write([B)Lcom/netease/ntunisdk/okio/BufferedSink;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->boundary:Lcom/netease/ntunisdk/okio/ByteString;

    invoke-interface {p1, v1}, Lcom/netease/ntunisdk/okio/BufferedSink;->write(Lcom/netease/ntunisdk/okio/ByteString;)Lcom/netease/ntunisdk/okio/BufferedSink;

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v1}, Lcom/netease/ntunisdk/okio/BufferedSink;->write([B)Lcom/netease/ntunisdk/okio/BufferedSink;

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v1}, Lcom/netease/ntunisdk/okio/BufferedSink;->write([B)Lcom/netease/ntunisdk/okio/BufferedSink;

    if-eqz p2, :cond_7

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/Buffer;->size()J

    move-result-wide p1

    add-long/2addr v4, p1

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/Buffer;->clear()V

    :cond_7
    return-wide v4
.end method


# virtual methods
.method public boundary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->boundary:Lcom/netease/ntunisdk/okio/ByteString;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->writeOrCountBytes(Lcom/netease/ntunisdk/okio/BufferedSink;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lcom/netease/ntunisdk/okhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->contentType:Lcom/netease/ntunisdk/okhttp3/MediaType;

    return-object v0
.end method

.method public part(I)Lcom/netease/ntunisdk/okhttp3/MultipartBody$Part;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Part;

    return-object p1
.end method

.method public parts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public type()Lcom/netease/ntunisdk/okhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->originalType:Lcom/netease/ntunisdk/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/netease/ntunisdk/okio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->writeOrCountBytes(Lcom/netease/ntunisdk/okio/BufferedSink;Z)J

    return-void
.end method
.class public abstract Lio/netty/handler/codec/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpHeaders$Names;,
        Lio/netty/handler/codec/http/HttpHeaders$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final CHUNKED_ENTITY:Ljava/lang/CharSequence;

.field private static final CLOSE_ENTITY:Ljava/lang/CharSequence;

.field private static final CONNECTION_ENTITY:Ljava/lang/CharSequence;

.field private static final CONTENT_LENGTH_ENTITY:Ljava/lang/CharSequence;

.field private static final CONTINUE_ENTITY:Ljava/lang/CharSequence;

.field private static final CRLF:[B

.field private static final DATE_ENTITY:Ljava/lang/CharSequence;

.field public static final EMPTY_HEADERS:Lio/netty/handler/codec/http/HttpHeaders;

.field private static final EXPECT_ENTITY:Ljava/lang/CharSequence;

.field private static final HEADER_SEPERATOR:[B

.field private static final HOST_ENTITY:Ljava/lang/CharSequence;

.field private static final KEEP_ALIVE_ENTITY:Ljava/lang/CharSequence;

.field private static final SEC_WEBSOCKET_KEY1_ENTITY:Ljava/lang/CharSequence;

.field private static final SEC_WEBSOCKET_KEY2_ENTITY:Ljava/lang/CharSequence;

.field private static final SEC_WEBSOCKET_LOCATION_ENTITY:Ljava/lang/CharSequence;

.field private static final SEC_WEBSOCKET_ORIGIN_ENTITY:Ljava/lang/CharSequence;

.field private static final TRANSFER_ENCODING_ENTITY:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 38
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lio/netty/handler/codec/http/HttpHeaders;->HEADER_SEPERATOR:[B

    .line 39
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CRLF:[B

    const-string v0, "Content-Length"

    .line 40
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CONTENT_LENGTH_ENTITY:Ljava/lang/CharSequence;

    const-string v0, "Connection"

    .line 41
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CONNECTION_ENTITY:Ljava/lang/CharSequence;

    const-string v0, "close"

    .line 42
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CLOSE_ENTITY:Ljava/lang/CharSequence;

    const-string v0, "keep-alive"

    .line 43
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->KEEP_ALIVE_ENTITY:Ljava/lang/CharSequence;

    const-string v0, "Host"

    .line 44
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->HOST_ENTITY:Ljava/lang/CharSequence;

    const-string v0, "Date"

    .line 45
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->DATE_ENTITY:Ljava/lang/CharSequence;

    const-string v0, "Expect"

    .line 46
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->EXPECT_ENTITY:Ljava/lang/CharSequence;

    const-string v0, "100-continue"

    .line 47
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CONTINUE_ENTITY:Ljava/lang/CharSequence;

    const-string v0, "Transfer-Encoding"

    .line 48
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->TRANSFER_ENCODING_ENTITY:Ljava/lang/CharSequence;

    const-string v0, "chunked"

    .line 49
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CHUNKED_ENTITY:Ljava/lang/CharSequence;

    const-string v0, "Sec-WebSocket-Key1"

    .line 50
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->SEC_WEBSOCKET_KEY1_ENTITY:Ljava/lang/CharSequence;

    const-string v0, "Sec-WebSocket-Key2"

    .line 51
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->SEC_WEBSOCKET_KEY2_ENTITY:Ljava/lang/CharSequence;

    const-string v0, "Sec-WebSocket-Origin"

    .line 52
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->SEC_WEBSOCKET_ORIGIN_ENTITY:Ljava/lang/CharSequence;

    const-string v0, "Sec-WebSocket-Location"

    .line 53
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->SEC_WEBSOCKET_LOCATION_ENTITY:Ljava/lang/CharSequence;

    .line 55
    new-instance v0, Lio/netty/handler/codec/http/HttpHeaders$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http/HttpHeaders$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->EMPTY_HEADERS:Lio/netty/handler/codec/http/HttpHeaders;

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
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)V
    .locals 0

    .line 941
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static addDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 932
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static addHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 0

    .line 717
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static addHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 706
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static addIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 835
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static addIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V
    .locals 0

    .line 828
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static clearHeaders(Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 0

    .line 738
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaders;->clear()Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method static encode(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/buffer/ByteBuf;)V
    .locals 2

    .line 1355
    instance-of v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    if-eqz v0, :cond_0

    .line 1356
    check-cast p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->encode(Lio/netty/buffer/ByteBuf;)V

    goto :goto_1

    .line 1358
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaders;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1359
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->encode(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)V

    goto :goto_0
.end method

.method static encode(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 1366
    invoke-static {p0, p2}, Lio/netty/handler/codec/http/HttpHeaders;->encodeAscii(Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1367
    sget-object p0, Lio/netty/handler/codec/http/HttpHeaders;->HEADER_SEPERATOR:[B

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 1369
    :cond_0
    invoke-static {p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->encodeAscii(Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1370
    sget-object p0, Lio/netty/handler/codec/http/HttpHeaders;->CRLF:[B

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    :cond_1
    return-void
.end method

.method public static encodeAscii(Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)Z
    .locals 1

    .line 1375
    instance-of v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;

    if-eqz v0, :cond_0

    .line 1376
    check-cast p0, Lio/netty/handler/codec/http/HttpHeaderEntity;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaderEntity;->encode(Lio/netty/buffer/ByteBuf;)Z

    move-result p0

    return p0

    .line 1378
    :cond_0
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->encodeAscii0(Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)V

    const/4 p0, 0x0

    return p0
.end method

.method static encodeAscii0(Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)V
    .locals 3

    .line 1384
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    .line 1386
    :cond_0
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_1

    goto :goto_1

    .line 1309
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1310
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sub-int/2addr v2, v0

    :goto_0
    if-gez v2, :cond_3

    return v0

    .line 1315
    :cond_3
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1316
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_6

    const/16 v5, 0x5a

    const/16 v6, 0x41

    if-lt v3, v6, :cond_4

    if-gt v3, v5, :cond_4

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    :cond_4
    if-lt v4, v6, :cond_5

    if-gt v4, v5, :cond_5

    add-int/lit8 v4, v4, 0x20

    int-to-char v4, v4

    :cond_5
    if-eq v3, v4, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_7
    :goto_1
    return v1
.end method

.method public static getContentLength(Lio/netty/handler/codec/http/HttpMessage;)J
    .locals 4

    .line 957
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CONTENT_LENGTH_ENTITY:Ljava/lang/CharSequence;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 959
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 964
    :cond_0
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpHeaders;->getWebSocketContentLength(Lio/netty/handler/codec/http/HttpMessage;)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    return-wide v0

    .line 970
    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "header not found: Content-Length"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getContentLength(Lio/netty/handler/codec/http/HttpMessage;J)J
    .locals 4

    .line 984
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CONTENT_LENGTH_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 987
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide p1

    .line 995
    :cond_0
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpHeaders;->getWebSocketContentLength(Lio/netty/handler/codec/http/HttpMessage;)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    return-wide v0

    :cond_1
    return-wide p1
.end method

.method public static getDate(Lio/netty/handler/codec/http/HttpMessage;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1074
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->DATE_ENTITY:Ljava/lang/CharSequence;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getDate(Lio/netty/handler/codec/http/HttpMessage;Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    .line 1083
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->DATE_ENTITY:Ljava/lang/CharSequence;

    invoke-static {p0, v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 855
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 859
    invoke-static {}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->get()Lio/netty/handler/codec/http/HttpHeaderDateFormat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 857
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "header not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 878
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    .line 884
    :cond_0
    :try_start_0
    invoke-static {}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->get()Lio/netty/handler/codec/http/HttpHeaderDateFormat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method

.method public static getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/util/Date;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 842
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 866
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 631
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 650
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    return-object p0
.end method

.method public static getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 620
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 638
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHost(Lio/netty/handler/codec/http/HttpMessage;)Ljava/lang/String;
    .locals 1

    .line 1042
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->HOST_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHost(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1050
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->HOST_ENTITY:Ljava/lang/CharSequence;

    invoke-static {p0, v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)I
    .locals 2

    .line 758
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 762
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 760
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "header not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;I)I
    .locals 0

    .line 781
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    .line 787
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method public static getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)I
    .locals 0

    .line 745
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public static getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)I
    .locals 0

    .line 769
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method private static getWebSocketContentLength(Lio/netty/handler/codec/http/HttpMessage;)I
    .locals 2

    .line 1010
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    .line 1011
    instance-of v1, p0, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v1, :cond_0

    .line 1012
    check-cast p0, Lio/netty/handler/codec/http/HttpRequest;

    .line 1013
    sget-object v1, Lio/netty/handler/codec/http/HttpMethod;->GET:Lio/netty/handler/codec/http/HttpMethod;

    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpRequest;->getMethod()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1014
    sget-object p0, Lio/netty/handler/codec/http/HttpHeaders;->SEC_WEBSOCKET_KEY1_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1015
    sget-object p0, Lio/netty/handler/codec/http/HttpHeaders;->SEC_WEBSOCKET_KEY2_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    return p0

    .line 1018
    :cond_0
    instance-of v1, p0, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v1, :cond_1

    .line 1019
    check-cast p0, Lio/netty/handler/codec/http/HttpResponse;

    .line 1020
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpResponse;->getStatus()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result p0

    const/16 v1, 0x65

    if-ne p0, v1, :cond_1

    .line 1021
    sget-object p0, Lio/netty/handler/codec/http/HttpHeaders;->SEC_WEBSOCKET_ORIGIN_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1022
    sget-object p0, Lio/netty/handler/codec/http/HttpHeaders;->SEC_WEBSOCKET_LOCATION_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x10

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static hash(Ljava/lang/CharSequence;)I
    .locals 4

    .line 1333
    instance-of v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;

    if-eqz v0, :cond_0

    .line 1334
    check-cast p0, Lio/netty/handler/codec/http/HttpHeaderEntity;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaderEntity;->hash()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 1337
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_3

    if-lez v0, :cond_1

    return v0

    :cond_1
    const/high16 p0, -0x80000000

    if-ne v0, p0, :cond_2

    const p0, 0x7fffffff

    return p0

    :cond_2
    neg-int p0, v0

    return p0

    .line 1338
    :cond_3
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_4

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_4

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    :cond_4
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static is100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 3

    .line 1103
    instance-of v0, p0, Lio/netty/handler/codec/http/HttpRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1108
    :cond_0
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    sget-object v2, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/HttpVersion;->compareTo(Lio/netty/handler/codec/http/HttpVersion;)I

    move-result v0

    if-gez v0, :cond_1

    return v1

    .line 1113
    :cond_1
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaders;->EXPECT_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 1117
    :cond_2
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CONTINUE_ENTITY:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    return v1

    .line 1122
    :cond_3
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->EXPECT_ENTITY:Ljava/lang/CharSequence;

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaders;->CONTINUE_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v2, v1}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method public static isContentLengthSet(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 1

    .line 1293
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CONTENT_LENGTH_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isKeepAlive(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 2

    .line 568
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CONNECTION_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 569
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CLOSE_ENTITY:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 573
    :cond_0
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->isKeepAliveDefault()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 574
    sget-object p0, Lio/netty/handler/codec/http/HttpHeaders;->CLOSE_ENTITY:Ljava/lang/CharSequence;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 576
    :cond_1
    sget-object p0, Lio/netty/handler/codec/http/HttpHeaders;->KEEP_ALIVE_ENTITY:Ljava/lang/CharSequence;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 3

    .line 1265
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->TRANSFER_ENCODING_ENTITY:Ljava/lang/CharSequence;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CHUNKED_ENTITY:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method public static newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p0, :cond_0

    .line 1398
    new-instance v0, Lio/netty/handler/codec/http/HttpHeaderEntity;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http/HttpHeaderEntity;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1396
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "name"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newNameEntity(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    if-eqz p0, :cond_0

    .line 1409
    new-instance v0, Lio/netty/handler/codec/http/HttpHeaderEntity;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->HEADER_SEPERATOR:[B

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/HttpHeaderEntity;-><init>(Ljava/lang/String;[B)V

    return-object v0

    .line 1407
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "name"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newValueEntity(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    if-eqz p0, :cond_0

    .line 1420
    new-instance v0, Lio/netty/handler/codec/http/HttpHeaderEntity;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CRLF:[B

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/HttpHeaderEntity;-><init>(Ljava/lang/String;[B)V

    return-object v0

    .line 1418
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "name"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)V
    .locals 0

    .line 731
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static removeHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V
    .locals 0

    .line 724
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static removeTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 4

    .line 1269
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->TRANSFER_ENCODING_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 1270
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1273
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1274
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1280
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1281
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->TRANSFER_ENCODING_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_1

    .line 1283
    :cond_2
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->TRANSFER_ENCODING_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v0}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    :goto_1
    return-void

    .line 1275
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1276
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaders;->CHUNKED_ENTITY:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1277
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static set100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 1

    const/4 v0, 0x1

    .line 1131
    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->set100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;Z)V

    return-void
.end method

.method public static set100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1143
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    sget-object p1, Lio/netty/handler/codec/http/HttpHeaders;->EXPECT_ENTITY:Ljava/lang/CharSequence;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CONTINUE_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 1145
    :cond_0
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    sget-object p1, Lio/netty/handler/codec/http/HttpHeaders;->EXPECT_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    :goto_0
    return-void
.end method

.method public static setContentLength(Lio/netty/handler/codec/http/HttpMessage;J)V
    .locals 1

    .line 1035
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CONTENT_LENGTH_ENTITY:Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static setDate(Lio/netty/handler/codec/http/HttpMessage;Ljava/util/Date;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1091
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->DATE_ENTITY:Ljava/lang/CharSequence;

    invoke-static {}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->get()Lio/netty/handler/codec/http/HttpHeaderDateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 1093
    :cond_0
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    sget-object p1, Lio/netty/handler/codec/http/HttpHeaders;->DATE_ENTITY:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    :goto_0
    return-void
.end method

.method public static setDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 925
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static setDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 905
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-static {}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->get()Lio/netty/handler/codec/http/HttpHeaderDateFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 907
    :cond_0
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    :goto_0
    return-void
.end method

.method public static setDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 915
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static setDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 894
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->setDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)V

    return-void
.end method

.method public static setHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 699
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static setHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 0

    .line 673
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static setHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 681
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static setHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 661
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static setHost(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1064
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->HOST_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static setHost(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V
    .locals 1

    .line 1057
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->HOST_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static setIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 805
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static setIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 820
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static setIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V
    .locals 0

    .line 797
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static setIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 812
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public static setKeepAlive(Lio/netty/handler/codec/http/HttpMessage;Z)V
    .locals 1

    .line 600
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    .line 601
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->isKeepAliveDefault()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 603
    sget-object p0, Lio/netty/handler/codec/http/HttpHeaders;->CONNECTION_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 605
    :cond_0
    sget-object p0, Lio/netty/handler/codec/http/HttpHeaders;->CONNECTION_ENTITY:Ljava/lang/CharSequence;

    sget-object p1, Lio/netty/handler/codec/http/HttpHeaders;->CLOSE_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 609
    sget-object p0, Lio/netty/handler/codec/http/HttpHeaders;->CONNECTION_ENTITY:Ljava/lang/CharSequence;

    sget-object p1, Lio/netty/handler/codec/http/HttpHeaders;->KEEP_ALIVE_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 611
    :cond_2
    sget-object p0, Lio/netty/handler/codec/http/HttpHeaders;->CONNECTION_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    :goto_0
    return-void
.end method

.method public static setTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 2

    .line 1288
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->TRANSFER_ENCODING_ENTITY:Ljava/lang/CharSequence;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CHUNKED_ENTITY:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->addHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 1289
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CONTENT_LENGTH_ENTITY:Ljava/lang/CharSequence;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->removeHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static validateHeaderName(Ljava/lang/CharSequence;)V
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    .line 1160
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 1162
    :cond_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1174
    :cond_1
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Header name cannot contain the following prohibited characters: =,;: \\t\\r\\n\\v\\f: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1174
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1166
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Header name cannot contain non-ASCII characters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1166
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1157
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Header names cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static validateHeaderValue(Ljava/lang/CharSequence;)V
    .locals 6

    if-eqz p0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1205
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    if-nez v2, :cond_0

    return-void

    .line 1253
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1254
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Header value must not end with \'\\r\' or \'\\n\':"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1253
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1206
    :cond_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v4, 0x2

    const/16 v5, 0xa

    packed-switch v2, :pswitch_data_1

    goto :goto_2

    .line 1214
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1215
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Header value contains a prohibited character \'\\f\': "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1214
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1211
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1212
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Header value contains a prohibited character \'\\v\': "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1211
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const/16 v2, 0x9

    if-eq v3, v2, :cond_3

    const/16 v2, 0x20

    if-ne v3, v2, :cond_2

    goto :goto_1

    .line 1246
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only \' \' and \'\\t\' are allowed after \'\\n\': "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1246
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_3
    if-ne v3, v5, :cond_5

    :cond_4
    const/4 v2, 0x2

    goto :goto_2

    .line 1236
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1237
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only \'\\n\' is allowed after \'\\r\': "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1236
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    if-eq v3, v5, :cond_4

    const/16 v4, 0xd

    if-eq v3, v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1189
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Header values cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public add(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2

    if-eqz p1, :cond_1

    .line 1548
    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpHeaders;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1549
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 1546
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "headers"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .line 1536
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0

    .line 1510
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    return-object p1
.end method

.method public abstract add(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation
.end method

.method public abstract add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public abstract clear()Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 1476
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 0

    .line 1674
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .line 1646
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1647
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1651
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz p3, :cond_3

    .line 1653
    invoke-static {v0, p2}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1657
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2
.end method

.method public abstract entries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public get(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 1438
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getAll(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1454
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract getAll(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract names()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0

    .line 1632
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    return-object p1
.end method

.method public abstract remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2

    if-eqz p1, :cond_1

    .line 1613
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaders;->clear()Lio/netty/handler/codec/http/HttpHeaders;

    .line 1614
    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpHeaders;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1615
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 1611
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "headers"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .line 1601
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0

    .line 1573
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    return-object p1
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
.end method

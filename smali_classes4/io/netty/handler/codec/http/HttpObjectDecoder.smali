.class public abstract Lio/netty/handler/codec/http/HttpObjectDecoder;
.super Lio/netty/handler/codec/ReplayingDecoder;
.source "HttpObjectDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;,
        Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;,
        Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/ReplayingDecoder<",
        "Lio/netty/handler/codec/http/HttpObjectDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$io$netty$handler$codec$http$HttpObjectDecoder$State:[I

.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private chunkSize:J

.field private final chunkedSupported:Z

.field private contentLength:J

.field private final headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

.field private headerSize:I

.field private final lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

.field private final maxChunkSize:I

.field private final maxHeaderSize:I

.field private final maxInitialLineLength:I

.field private message:Lio/netty/handler/codec/http/HttpMessage;

.field private final seq:Lio/netty/util/internal/AppendableCharSequence;

.field protected final validateHeaders:Z


# direct methods
.method static synthetic $SWITCH_TABLE$io$netty$handler$codec$http$HttpObjectDecoder$State()[I
    .locals 3

    .line 104
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->$SWITCH_TABLE$io$netty$handler$codec$http$HttpObjectDecoder$State:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->values()[Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->BAD_MESSAGE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNKED_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_DELIMITER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_FOOTER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_HEADER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_INITIAL:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->UPGRADED:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->$SWITCH_TABLE$io$netty$handler$codec$http$HttpObjectDecoder$State:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    const/16 v0, 0x2000

    const/16 v1, 0x1000

    const/4 v2, 0x1

    .line 144
    invoke-direct {p0, v1, v0, v0, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZ)V

    return-void
.end method

.method protected constructor <init>(IIIZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 152
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZZ)V

    return-void
.end method

.method protected constructor <init>(IIIZZ)V
    .locals 2

    .line 162
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoder;-><init>(Ljava/lang/Object;)V

    .line 111
    new-instance v0, Lio/netty/util/internal/AppendableCharSequence;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lio/netty/util/internal/AppendableCharSequence;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->seq:Lio/netty/util/internal/AppendableCharSequence;

    .line 112
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;-><init>(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/util/internal/AppendableCharSequence;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    .line 113
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;-><init>(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/util/internal/AppendableCharSequence;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    const-wide/high16 v0, -0x8000000000000000L

    .line 118
    iput-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    if-lez p1, :cond_2

    if-lez p2, :cond_1

    if-lez p3, :cond_0

    .line 179
    iput p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxInitialLineLength:I

    .line 180
    iput p2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxHeaderSize:I

    .line 181
    iput p3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxChunkSize:I

    .line 182
    iput-boolean p4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkedSupported:Z

    .line 183
    iput-boolean p5, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    return-void

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "maxChunkSize must be a positive integer: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 175
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 171
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "maxHeaderSize must be a positive integer: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 170
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 166
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "maxInitialLineLength must be a positive integer: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic access$0(Lio/netty/handler/codec/http/HttpObjectDecoder;I)V
    .locals 0

    .line 117
    iput p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerSize:I

    return-void
.end method

.method static synthetic access$1(Lio/netty/handler/codec/http/HttpObjectDecoder;)I
    .locals 0

    .line 117
    iget p0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerSize:I

    return p0
.end method

.method static synthetic access$2(Lio/netty/handler/codec/http/HttpObjectDecoder;)I
    .locals 0

    .line 107
    iget p0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxHeaderSize:I

    return p0
.end method

.method static synthetic access$3(Lio/netty/handler/codec/http/HttpObjectDecoder;)I
    .locals 0

    .line 106
    iget p0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxInitialLineLength:I

    return p0
.end method

.method private contentLength()J
    .locals 5

    .line 524
    iget-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 525
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->getContentLength(Lio/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    .line 527
    :cond_0
    iget-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    return-wide v0
.end method

.method private static findEndOfString(Ljava/lang/CharSequence;)I
    .locals 2

    .line 667
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 668
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static findNonWhitespace(Ljava/lang/CharSequence;I)I
    .locals 1

    .line 647
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 648
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static findWhitespace(Ljava/lang/CharSequence;I)I
    .locals 1

    .line 657
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 658
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static getChunkSize(Ljava/lang/String;)I
    .locals 4

    .line 572
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 573
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_2

    .line 574
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_2

    .line 575
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 576
    :cond_2
    :goto_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_2
    const/16 v0, 0x10

    .line 581
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private invalidChunk(Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpContent;
    .locals 2

    .line 458
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->BAD_MESSAGE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 459
    new-instance v0, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 460
    invoke-static {p1}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/HttpContent;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    const/4 p1, 0x0

    .line 461
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    return-object v0
.end method

.method private invalidMessage(Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpMessage;
    .locals 1

    .line 444
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->BAD_MESSAGE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-static {p1}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/HttpMessage;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->createInvalidMessage()Lio/netty/handler/codec/http/HttpMessage;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 449
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-static {p1}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/HttpMessage;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 452
    :goto_0
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    const/4 v0, 0x0

    .line 453
    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    return-object p1
.end method

.method private readHeaders(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    .locals 9

    const/4 v0, 0x0

    .line 477
    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerSize:I

    .line 478
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 479
    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    .line 481
    iget-object v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    invoke-virtual {v3, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v3

    .line 484
    invoke-virtual {v3}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 485
    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpHeaders;->clear()Lio/netty/handler/codec/http/HttpHeaders;

    const/4 v4, 0x0

    move-object v5, v4

    .line 487
    :cond_0
    invoke-virtual {v3, v0}, Lio/netty/util/internal/AppendableCharSequence;->charAt(I)C

    move-result v6

    if-eqz v4, :cond_2

    const/16 v7, 0x20

    if-eq v6, v7, :cond_1

    const/16 v8, 0x9

    if-ne v6, v8, :cond_2

    .line 489
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lio/netty/util/internal/AppendableCharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v5, v3

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    .line 492
    invoke-virtual {v2, v4, v5}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 494
    :cond_3
    invoke-static {v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitHeader(Lio/netty/util/internal/AppendableCharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 495
    aget-object v4, v3, v0

    const/4 v5, 0x1

    .line 496
    aget-object v3, v3, v5

    goto :goto_0

    .line 499
    :goto_1
    iget-object v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    invoke-virtual {v3, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v3

    .line 500
    invoke-virtual {v3}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v6

    if-gtz v6, :cond_0

    if-eqz v4, :cond_4

    .line 504
    invoke-virtual {v2, v4, v5}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 510
    :cond_4
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 511
    invoke-static {v1}, Lio/netty/handler/codec/http/HttpHeaders;->removeTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)V

    .line 512
    sget-object p1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    goto :goto_2

    .line 513
    :cond_5
    invoke-static {v1}, Lio/netty/handler/codec/http/HttpHeaders;->isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 514
    sget-object p1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    goto :goto_2

    .line 515
    :cond_6
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_7

    .line 516
    sget-object p1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    goto :goto_2

    .line 518
    :cond_7
    sget-object p1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    :goto_2
    return-object p1
.end method

.method private readTrailingHeaders(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 8

    const/4 v0, 0x0

    .line 531
    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerSize:I

    .line 532
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    invoke-virtual {v1, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v1

    .line 534
    invoke-virtual {v1}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 535
    new-instance v2, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    sget-object v3, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    iget-boolean v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    invoke-direct {v2, v3, v4}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    const/4 v3, 0x0

    .line 537
    :cond_0
    invoke-virtual {v1, v0}, Lio/netty/util/internal/AppendableCharSequence;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    const/16 v6, 0x20

    if-eq v4, v6, :cond_1

    const/16 v6, 0x9

    if-ne v4, v6, :cond_2

    .line 539
    :cond_1
    invoke-interface {v2}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 540
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 541
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .line 542
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/netty/util/internal/AppendableCharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-interface {v4, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 548
    :cond_2
    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitHeader(Lio/netty/util/internal/AppendableCharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 549
    aget-object v3, v1, v0

    const-string v4, "Content-Length"

    .line 550
    invoke-static {v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Transfer-Encoding"

    .line 551
    invoke-static {v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Trailer"

    .line 552
    invoke-static {v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 553
    invoke-interface {v2}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    aget-object v1, v1, v5

    invoke-virtual {v4, v3, v1}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 558
    :cond_3
    :goto_0
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    invoke-virtual {v1, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v1

    .line 559
    invoke-virtual {v1}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v4

    if-gtz v4, :cond_0

    return-object v2

    .line 564
    :cond_4
    sget-object p1, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    return-object p1
.end method

.method private reset()V
    .locals 3

    .line 429
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    const/4 v1, 0x0

    .line 430
    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    const-wide/high16 v1, -0x8000000000000000L

    .line 431
    iput-wide v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    .line 432
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isDecodingRequest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_0

    .line 434
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->getStatus()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 435
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->UPGRADED:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    return-void

    .line 440
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    return-void
.end method

.method private static skipControlCharacters(Lio/netty/buffer/ByteBuf;)V
    .locals 2

    .line 467
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    int-to-char v0, v0

    .line 468
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 469
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method private static splitHeader(Lio/netty/util/internal/AppendableCharSequence;)[Ljava/lang/String;
    .locals 7

    .line 608
    invoke-virtual {p0}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 615
    invoke-static {p0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonWhitespace(Ljava/lang/CharSequence;I)I

    move-result v2

    move v3, v2

    :goto_0
    const/16 v4, 0x3a

    if-lt v3, v0, :cond_0

    goto :goto_1

    .line 617
    :cond_0
    invoke-virtual {p0, v3}, Lio/netty/util/internal/AppendableCharSequence;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_2

    .line 618
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v5, v3

    :goto_2
    if-lt v5, v0, :cond_3

    goto :goto_3

    .line 624
    :cond_3
    invoke-virtual {p0, v5}, Lio/netty/util/internal/AppendableCharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_5

    add-int/lit8 v5, v5, 0x1

    .line 630
    :goto_3
    invoke-static {p0, v5}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonWhitespace(Ljava/lang/CharSequence;I)I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v0, :cond_4

    .line 632
    new-array v0, v5, [Ljava/lang/String;

    .line 633
    invoke-virtual {p0, v2, v3}, Lio/netty/util/internal/AppendableCharSequence;->substring(II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, ""

    aput-object p0, v0, v6

    return-object v0

    .line 638
    :cond_4
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findEndOfString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 639
    new-array v5, v5, [Ljava/lang/String;

    .line 640
    invoke-virtual {p0, v2, v3}, Lio/netty/util/internal/AppendableCharSequence;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 641
    invoke-virtual {p0, v4, v0}, Lio/netty/util/internal/AppendableCharSequence;->substring(II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v6

    return-object v5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private static splitInitialLine(Lio/netty/util/internal/AppendableCharSequence;)[Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    .line 592
    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonWhitespace(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 593
    invoke-static {p0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findWhitespace(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 595
    invoke-static {p0, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonWhitespace(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 596
    invoke-static {p0, v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findWhitespace(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 598
    invoke-static {p0, v4}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonWhitespace(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 599
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findEndOfString(Ljava/lang/CharSequence;)I

    move-result v6

    const/4 v7, 0x3

    .line 601
    new-array v7, v7, [Ljava/lang/String;

    .line 602
    invoke-virtual {p0, v1, v2}, Lio/netty/util/internal/AppendableCharSequence;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    .line 603
    invoke-virtual {p0, v3, v4}, Lio/netty/util/internal/AppendableCharSequence;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v7, v1

    if-ge v5, v6, :cond_0

    .line 604
    invoke-virtual {p0, v5, v6}, Lio/netty/util/internal/AppendableCharSequence;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const/4 v0, 0x2

    aput-object p0, v7, v0

    return-object v7
.end method


# virtual methods
.method protected abstract createInvalidMessage()Lio/netty/handler/codec/http/HttpMessage;
.end method

.method protected abstract createMessage([Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    invoke-static {}, Lio/netty/handler/codec/http/HttpObjectDecoder;->$SWITCH_TABLE$io$netty$handler$codec$http$HttpObjectDecoder$State()[I

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->state()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 366
    :pswitch_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->actualReadableBytes()I

    move-result p1

    if-lez p1, :cond_12

    .line 372
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->actualReadableBytes()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->readBytes(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 362
    :pswitch_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->actualReadableBytes()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    goto/16 :goto_4

    .line 352
    :pswitch_2
    :try_start_0
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->readTrailingHeaders(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object p1

    .line 353
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 357
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidChunk(Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpContent;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 306
    :pswitch_3
    :try_start_1
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    invoke-virtual {v0, p2}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lio/netty/util/internal/AppendableCharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->getChunkSize(Ljava/lang/String;)I

    move-result v0

    int-to-long v3, v0

    .line 308
    iput-wide v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    if-nez v0, :cond_0

    .line 310
    sget-object p1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_FOOTER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    return-void

    .line 313
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNKED_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 321
    :pswitch_4
    iget-wide v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    long-to-int v0, v3

    iget v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxChunkSize:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 323
    new-instance v3, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lio/netty/buffer/ByteBufUtil;->readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-direct {v3, p1}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 324
    iget-wide v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    .line 326
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-wide v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_4

    .line 330
    sget-object p1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_DELIMITER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 337
    :cond_1
    :goto_0
    :pswitch_5
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result p1

    const/16 p3, 0xd

    const/16 v0, 0xa

    if-ne p1, p3, :cond_2

    .line 339
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result p1

    if-ne p1, v0, :cond_1

    .line 340
    sget-object p1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    return-void

    :cond_2
    if-ne p1, v0, :cond_3

    .line 344
    sget-object p1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    return-void

    .line 347
    :cond_3
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint()V

    goto :goto_0

    :cond_4
    return-void

    :catch_1
    move-exception p1

    .line 316
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidChunk(Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpContent;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 273
    :pswitch_6
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->actualReadableBytes()I

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 285
    :cond_5
    iget v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxChunkSize:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v3, v0

    .line 286
    iget-wide v5, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_6

    .line 287
    iget-wide v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    long-to-int v0, v3

    .line 289
    :cond_6
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lio/netty/buffer/ByteBufUtil;->readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 290
    iget-wide v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    int-to-long v5, v0

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    .line 292
    iget-wide v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    cmp-long p2, v3, v1

    if-nez p2, :cond_7

    .line 294
    new-instance p2, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    invoke-direct {p2, p1, v0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->reset()V

    goto :goto_1

    .line 297
    :cond_7
    new-instance p2, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-direct {p2, p1}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    .line 255
    :pswitch_7
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->actualReadableBytes()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxChunkSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_9

    .line 257
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lio/netty/buffer/ByteBufUtil;->readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 258
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 259
    new-instance p2, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-direct {p2, p1}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 262
    :cond_8
    new-instance p2, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    invoke-direct {p2, p1, v0}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->reset()V

    goto :goto_2

    .line 265
    :cond_9
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result p1

    if-nez p1, :cond_a

    .line 267
    sget-object p1, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->reset()V

    :cond_a
    :goto_2
    return-void

    .line 191
    :pswitch_8
    :try_start_2
    invoke-static {p2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->skipControlCharacters(Lio/netty/buffer/ByteBuf;)V

    .line 192
    sget-object p1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_INITIAL:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint()V

    .line 198
    :pswitch_9
    :try_start_3
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    invoke-virtual {p1, p2}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object p1

    invoke-static {p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitInitialLine(Lio/netty/util/internal/AppendableCharSequence;)[Ljava/lang/String;

    move-result-object p1

    .line 199
    array-length v0, p1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_b

    .line 201
    sget-object p1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    return-void

    .line 205
    :cond_b
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->createMessage([Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMessage;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 206
    sget-object p1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_HEADER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 213
    :pswitch_a
    :try_start_4
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->readHeaders(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-result-object p1

    .line 214
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 215
    sget-object p2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-ne p1, p2, :cond_d

    .line 216
    iget-boolean p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkedSupported:Z

    if-eqz p1, :cond_c

    .line 220
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 217
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Chunked messages not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_d
    sget-object p2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-ne p1, p2, :cond_e

    .line 225
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object p1, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->reset()V

    return-void

    .line 230
    :cond_e
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-eqz p2, :cond_11

    const-wide/16 v0, -0x1

    cmp-long p2, v3, v0

    if-nez p2, :cond_f

    .line 231
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isDecodingRequest()Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_3

    .line 240
    :cond_f
    iget-object p2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object p2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-ne p1, p2, :cond_10

    .line 244
    iput-wide v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    :cond_10
    return-void

    .line 232
    :cond_11
    :goto_3
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object p1, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->reset()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 250
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidMessage(Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpMessage;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catch_3
    move-exception p1

    .line 209
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidMessage(Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpMessage;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 194
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint()V

    .line 195
    throw p1

    :cond_12
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected decodeLast(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 381
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 384
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    if-eqz p1, :cond_2

    .line 388
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isDecodingRequest()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 397
    :goto_0
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->reset()V

    if-nez p2, :cond_2

    .line 400
    sget-object p1, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 4

    .line 406
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 407
    check-cast p1, Lio/netty/handler/codec/http/HttpResponse;

    .line 408
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->getStatus()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_1

    const/16 v2, 0x65

    if-ne v0, v2, :cond_0

    .line 417
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    const-string v0, "Sec-WebSocket-Accept"

    invoke-virtual {p1, v0}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/16 p1, 0x130

    if-eq v0, p1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :cond_2
    :pswitch_0
    return v3

    :cond_3
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xcc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract isDecodingRequest()Z
.end method

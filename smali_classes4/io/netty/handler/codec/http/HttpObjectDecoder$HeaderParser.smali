.class final Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;
.super Ljava/lang/Object;
.source "HttpObjectDecoder.java"

# interfaces
.implements Lio/netty/buffer/ByteBufProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpObjectDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeaderParser"
.end annotation


# instance fields
.field private final seq:Lio/netty/util/internal/AppendableCharSequence;

.field final synthetic this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/util/internal/AppendableCharSequence;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object p2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    return-void
.end method


# virtual methods
.method public parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;
    .locals 2

    .line 683
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-virtual {v0}, Lio/netty/util/internal/AppendableCharSequence;->reset()V

    .line 684
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$0(Lio/netty/handler/codec/http/HttpObjectDecoder;I)V

    .line 685
    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->forEachByte(Lio/netty/buffer/ByteBufProcessor;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 686
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 687
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    return-object p1
.end method

.method public process(B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    int-to-char p1, p1

    .line 693
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$1(Lio/netty/handler/codec/http/HttpObjectDecoder;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$0(Lio/netty/handler/codec/http/HttpObjectDecoder;I)V

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 702
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$1(Lio/netty/handler/codec/http/HttpObjectDecoder;)I

    move-result v0

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$2(Lio/netty/handler/codec/http/HttpObjectDecoder;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 712
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-virtual {v0, p1}, Lio/netty/util/internal/AppendableCharSequence;->append(C)Lio/netty/util/internal/AppendableCharSequence;

    return v2

    .line 707
    :cond_2
    new-instance p1, Lio/netty/handler/codec/TooLongFrameException;

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP header is larger than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 709
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$2(Lio/netty/handler/codec/http/HttpObjectDecoder;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    invoke-direct {p1, v0}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

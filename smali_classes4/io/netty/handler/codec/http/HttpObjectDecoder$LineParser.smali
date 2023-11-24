.class final Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;
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
    name = "LineParser"
.end annotation


# instance fields
.field private final seq:Lio/netty/util/internal/AppendableCharSequence;

.field private size:I

.field final synthetic this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/util/internal/AppendableCharSequence;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    iput-object p2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    return-void
.end method


# virtual methods
.method public parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;
    .locals 1

    .line 726
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-virtual {v0}, Lio/netty/util/internal/AppendableCharSequence;->reset()V

    const/4 v0, 0x0

    .line 727
    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->size:I

    .line 728
    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->forEachByte(Lio/netty/buffer/ByteBufProcessor;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 729
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 730
    iget-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

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

    const/4 v0, 0x1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 741
    :cond_1
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->size:I

    iget-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-static {v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$3(Lio/netty/handler/codec/http/HttpObjectDecoder;)I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 750
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->size:I

    .line 751
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-virtual {v1, p1}, Lio/netty/util/internal/AppendableCharSequence;->append(C)Lio/netty/util/internal/AppendableCharSequence;

    return v0

    .line 746
    :cond_2
    new-instance p1, Lio/netty/handler/codec/TooLongFrameException;

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "An HTTP line is larger than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$3(Lio/netty/handler/codec/http/HttpObjectDecoder;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes."

    .line 748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    invoke-direct {p1, v0}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

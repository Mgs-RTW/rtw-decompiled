.class public Lcom/netease/ntunisdk/glide/load/resource/transcode/GifDrawableBytesTranscoder;
.super Ljava/lang/Object;
.source "GifDrawableBytesTranscoder.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder<",
        "Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transcode(Lcom/netease/ntunisdk/glide/load/engine/Resource;Lcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/netease/ntunisdk/glide/load/Options;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "[B>;"
        }
    .end annotation

    .line 23
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;

    .line 24
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 25
    new-instance p2, Lcom/netease/ntunisdk/glide/load/resource/bytes/BytesResource;

    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/ByteBufferUtil;->toBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/netease/ntunisdk/glide/load/resource/bytes/BytesResource;-><init>([B)V

    return-object p2
.end method

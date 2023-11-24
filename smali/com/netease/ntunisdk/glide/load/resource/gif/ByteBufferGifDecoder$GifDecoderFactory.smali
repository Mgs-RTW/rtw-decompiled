.class Lcom/netease/ntunisdk/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;
.super Ljava/lang/Object;
.source "ByteBufferGifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/resource/gif/ByteBufferGifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifDecoderFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method build(Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/netease/ntunisdk/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;
    .locals 1

    .line 165
    new-instance v0, Lcom/netease/ntunisdk/glide/gifdecoder/StandardGifDecoder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/gifdecoder/StandardGifDecoder;-><init>(Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/netease/ntunisdk/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method

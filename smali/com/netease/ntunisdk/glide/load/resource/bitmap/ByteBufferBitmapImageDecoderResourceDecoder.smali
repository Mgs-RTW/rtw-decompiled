.class public final Lcom/netease/ntunisdk/glide/load/resource/bitmap/ByteBufferBitmapImageDecoderResourceDecoder;
.super Ljava/lang/Object;
.source "ByteBufferBitmapImageDecoderResourceDecoder.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/ResourceDecoder<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final wrapped:Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapImageDecoderResourceDecoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapImageDecoderResourceDecoder;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapImageDecoderResourceDecoder;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ByteBufferBitmapImageDecoderResourceDecoder;->wrapped:Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapImageDecoderResourceDecoder;

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ByteBufferBitmapImageDecoderResourceDecoder;->decode(Ljava/nio/ByteBuffer;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/nio/ByteBuffer;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Lcom/netease/ntunisdk/glide/load/Options;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ByteBufferBitmapImageDecoderResourceDecoder;->wrapped:Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapImageDecoderResourceDecoder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapImageDecoderResourceDecoder;->decode(Landroid/graphics/ImageDecoder$Source;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/Options;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ByteBufferBitmapImageDecoderResourceDecoder;->handles(Ljava/nio/ByteBuffer;Lcom/netease/ntunisdk/glide/load/Options;)Z

    move-result p1

    return p1
.end method

.method public handles(Ljava/nio/ByteBuffer;Lcom/netease/ntunisdk/glide/load/Options;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

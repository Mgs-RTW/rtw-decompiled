.class public Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder$UntrustedCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/ResourceDecoder<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final downsampler:Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder;->downsampler:Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;

    .line 26
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder;->byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
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

    .line 42
    instance-of v0, p1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    if-eqz v0, :cond_0

    .line 43
    check-cast p1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder;->byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v0, p1, v1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V

    const/4 p1, 0x1

    move-object p1, v0

    const/4 v0, 0x1

    .line 54
    :goto_0
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/ExceptionPassthroughInputStream;->obtain(Ljava/io/InputStream;)Lcom/netease/ntunisdk/glide/util/ExceptionPassthroughInputStream;

    move-result-object v1

    .line 60
    new-instance v3, Lcom/netease/ntunisdk/glide/util/MarkEnforcingInputStream;

    invoke-direct {v3, v1}, Lcom/netease/ntunisdk/glide/util/MarkEnforcingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    new-instance v7, Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder$UntrustedCallbacks;

    invoke-direct {v7, p1, v1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder$UntrustedCallbacks;-><init>(Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lcom/netease/ntunisdk/glide/util/ExceptionPassthroughInputStream;)V

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder;->downsampler:Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;IILcom/netease/ntunisdk/glide/load/Options;Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/util/ExceptionPassthroughInputStream;->release()V

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->release()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    .line 65
    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/util/ExceptionPassthroughInputStream;->release()V

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->release()V

    :cond_2
    throw p2
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder;->decode(Ljava/io/InputStream;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public handles(Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/Options;)Z
    .locals 0

    .line 31
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder;->downsampler:Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;->handles(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/Options;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder;->handles(Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/Options;)Z

    move-result p1

    return p1
.end method

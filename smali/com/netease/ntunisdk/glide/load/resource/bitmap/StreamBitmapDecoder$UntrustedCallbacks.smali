.class Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder$UntrustedCallbacks;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UntrustedCallbacks"
.end annotation


# instance fields
.field private final bufferedStream:Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;

.field private final exceptionStream:Lcom/netease/ntunisdk/glide/util/ExceptionPassthroughInputStream;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lcom/netease/ntunisdk/glide/util/ExceptionPassthroughInputStream;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder$UntrustedCallbacks;->bufferedStream:Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 84
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder$UntrustedCallbacks;->exceptionStream:Lcom/netease/ntunisdk/glide/util/ExceptionPassthroughInputStream;

    return-void
.end method


# virtual methods
.method public onDecodeComplete(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder$UntrustedCallbacks;->exceptionStream:Lcom/netease/ntunisdk/glide/util/ExceptionPassthroughInputStream;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/util/ExceptionPassthroughInputStream;->getException()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 104
    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 106
    :cond_0
    throw v0

    :cond_1
    return-void
.end method

.method public onObtainBounds()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder$UntrustedCallbacks;->bufferedStream:Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fixMarkLimit()V

    return-void
.end method

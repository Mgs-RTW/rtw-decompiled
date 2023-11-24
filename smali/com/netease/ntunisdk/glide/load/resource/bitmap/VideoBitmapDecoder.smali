.class public Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoBitmapDecoder;
.super Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;
.source "VideoBitmapDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/Glide;->get(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/Glide;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/Glide;->getBitmapPool()Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$ParcelFileDescriptorInitializer;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$ParcelFileDescriptorInitializer;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;-><init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer;)V

    return-void
.end method

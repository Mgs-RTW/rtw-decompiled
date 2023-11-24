.class public final Lcom/netease/ntunisdk/glide/load/resource/transcode/DrawableBytesTranscoder;
.super Ljava/lang/Object;
.source "DrawableBytesTranscoder.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final bitmapBytesTranscoder:Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field private final bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final gifDrawableBytesTranscoder:Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder<",
            "Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder<",
            "Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;",
            "[B>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/transcode/DrawableBytesTranscoder;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 28
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/resource/transcode/DrawableBytesTranscoder;->bitmapBytesTranscoder:Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;

    .line 29
    iput-object p3, p0, Lcom/netease/ntunisdk/glide/load/resource/transcode/DrawableBytesTranscoder;->gifDrawableBytesTranscoder:Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;

    return-void
.end method

.method private static toGifDrawableResource(Lcom/netease/ntunisdk/glide/load/engine/Resource;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public transcode(Lcom/netease/ntunisdk/glide/load/engine/Resource;Lcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/netease/ntunisdk/glide/load/Options;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "[B>;"
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 37
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/transcode/DrawableBytesTranscoder;->bitmapBytesTranscoder:Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 39
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/transcode/DrawableBytesTranscoder;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapResource;

    move-result-object v0

    .line 38
    invoke-interface {p1, v0, p2}, Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;->transcode(Lcom/netease/ntunisdk/glide/load/engine/Resource;Lcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    instance-of v0, v0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/transcode/DrawableBytesTranscoder;->gifDrawableBytesTranscoder:Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;

    invoke-static {p1}, Lcom/netease/ntunisdk/glide/load/resource/transcode/DrawableBytesTranscoder;->toGifDrawableResource(Lcom/netease/ntunisdk/glide/load/engine/Resource;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;->transcode(Lcom/netease/ntunisdk/glide/load/engine/Resource;Lcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

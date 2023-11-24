.class public Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawableTransformation;
.super Ljava/lang/Object;
.source "GifDrawableTransformation.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/Transformation<",
        "Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/glide/load/Transformation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/load/Transformation;

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 56
    instance-of v0, p1, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawableTransformation;

    if-eqz v0, :cond_0

    .line 57
    check-cast p1, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawableTransformation;

    .line 58
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    iget-object p1, p1, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public transform(Landroid/content/Context;Lcom/netease/ntunisdk/glide/load/engine/Resource;II)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;",
            ">;II)",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-interface {p2}, Lcom/netease/ntunisdk/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;

    .line 41
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/Glide;->get(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/Glide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/Glide;->getBitmapPool()Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;->getFirstFrame()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 43
    new-instance v3, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapResource;

    invoke-direct {v3, v2, v1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 44
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    invoke-interface {v1, p1, v3, p3, p4}, Lcom/netease/ntunisdk/glide/load/Transformation;->transform(Landroid/content/Context;Lcom/netease/ntunisdk/glide/load/engine/Resource;II)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 46
    invoke-interface {v3}, Lcom/netease/ntunisdk/glide/load/engine/Resource;->recycle()V

    .line 48
    :cond_0
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 50
    iget-object p3, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    invoke-virtual {v0, p3, p1}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;->setFrameTransformation(Lcom/netease/ntunisdk/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/glide/load/Transformation;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method

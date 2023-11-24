.class public Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableEncoder;
.super Ljava/lang/Object;
.source "BitmapDrawableEncoder.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/ResourceEncoder<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final encoder:Lcom/netease/ntunisdk/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/ResourceEncoder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/load/ResourceEncoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/netease/ntunisdk/glide/load/ResourceEncoder<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableEncoder;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 22
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableEncoder;->encoder:Lcom/netease/ntunisdk/glide/load/ResourceEncoder;

    return-void
.end method


# virtual methods
.method public encode(Lcom/netease/ntunisdk/glide/load/engine/Resource;Ljava/io/File;Lcom/netease/ntunisdk/glide/load/Options;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;",
            "Ljava/io/File;",
            "Lcom/netease/ntunisdk/glide/load/Options;",
            ")Z"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableEncoder;->encoder:Lcom/netease/ntunisdk/glide/load/ResourceEncoder;

    new-instance v1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapResource;

    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableEncoder;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v1, p1, v2}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/netease/ntunisdk/glide/load/ResourceEncoder;->encode(Ljava/lang/Object;Ljava/io/File;Lcom/netease/ntunisdk/glide/load/Options;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/File;Lcom/netease/ntunisdk/glide/load/Options;)Z
    .locals 0

    .line 15
    check-cast p1, Lcom/netease/ntunisdk/glide/load/engine/Resource;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableEncoder;->encode(Lcom/netease/ntunisdk/glide/load/engine/Resource;Ljava/io/File;Lcom/netease/ntunisdk/glide/load/Options;)Z

    move-result p1

    return p1
.end method

.method public getEncodeStrategy(Lcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/EncodeStrategy;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableEncoder;->encoder:Lcom/netease/ntunisdk/glide/load/ResourceEncoder;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/glide/load/ResourceEncoder;->getEncodeStrategy(Lcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    move-result-object p1

    return-object p1
.end method

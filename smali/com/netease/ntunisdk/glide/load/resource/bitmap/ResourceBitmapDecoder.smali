.class public Lcom/netease/ntunisdk/glide/load/resource/bitmap/ResourceBitmapDecoder;
.super Ljava/lang/Object;
.source "ResourceBitmapDecoder.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/ResourceDecoder<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final drawableDecoder:Lcom/netease/ntunisdk/glide/load/resource/drawable/ResourceDrawableDecoder;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/glide/load/resource/drawable/ResourceDrawableDecoder;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ResourceBitmapDecoder;->drawableDecoder:Lcom/netease/ntunisdk/glide/load/resource/drawable/ResourceDrawableDecoder;

    .line 37
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ResourceBitmapDecoder;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    return-void
.end method


# virtual methods
.method public decode(Landroid/net/Uri;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lcom/netease/ntunisdk/glide/load/Options;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ResourceBitmapDecoder;->drawableDecoder:Lcom/netease/ntunisdk/glide/load/resource/drawable/ResourceDrawableDecoder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/resource/drawable/ResourceDrawableDecoder;->decode(Landroid/net/Uri;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_0
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 54
    iget-object p4, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ResourceBitmapDecoder;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {p4, p1, p2, p3}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DrawableToBitmapConverter;->convert(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/drawable/Drawable;II)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ResourceBitmapDecoder;->decode(Landroid/net/Uri;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/net/Uri;Lcom/netease/ntunisdk/glide/load/Options;)Z
    .locals 0

    .line 42
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.resource"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 30
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ResourceBitmapDecoder;->handles(Landroid/net/Uri;Lcom/netease/ntunisdk/glide/load/Options;)Z

    move-result p1

    return p1
.end method

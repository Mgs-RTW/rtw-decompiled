.class public Lcom/netease/ntunisdk/glide/load/resource/bitmap/DrawableTransformation;
.super Ljava/lang/Object;
.source "DrawableTransformation.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/Transformation<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final isRequired:Z

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
.method public constructor <init>(Lcom/netease/ntunisdk/glide/load/Transformation;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    .line 39
    iput-boolean p2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DrawableTransformation;->isRequired:Z

    return-void
.end method

.method private newDrawableResource(Landroid/content/Context;Lcom/netease/ntunisdk/glide/load/engine/Resource;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/LazyBitmapDrawableResource;->obtain(Landroid/content/res/Resources;Lcom/netease/ntunisdk/glide/load/engine/Resource;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public asBitmapDrawable()Lcom/netease/ntunisdk/glide/load/Transformation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/ntunisdk/glide/load/Transformation<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 83
    instance-of v0, p1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DrawableTransformation;

    if-eqz v0, :cond_0

    .line 84
    check-cast p1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DrawableTransformation;

    .line 85
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    iget-object p1, p1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public transform(Landroid/content/Context;Lcom/netease/ntunisdk/glide/load/engine/Resource;II)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;II)",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/Glide;->get(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/Glide;->getBitmapPool()Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    .line 52
    invoke-interface {p2}, Lcom/netease/ntunisdk/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-static {v0, v1, p3, p4}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DrawableToBitmapConverter;->convert(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/drawable/Drawable;II)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object v0

    if-nez v0, :cond_1

    .line 56
    iget-boolean p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DrawableTransformation;->isRequired:Z

    if-nez p1, :cond_0

    return-object p2

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to convert "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to a Bitmap"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    .line 63
    invoke-interface {v1, p1, v0, p3, p4}, Lcom/netease/ntunisdk/glide/load/Transformation;->transform(Landroid/content/Context;Lcom/netease/ntunisdk/glide/load/engine/Resource;II)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p3

    .line 65
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 66
    invoke-interface {p3}, Lcom/netease/ntunisdk/glide/load/engine/Resource;->recycle()V

    return-object p2

    .line 69
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DrawableTransformation;->newDrawableResource(Landroid/content/Context;Lcom/netease/ntunisdk/glide/load/engine/Resource;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/glide/load/Transformation;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method

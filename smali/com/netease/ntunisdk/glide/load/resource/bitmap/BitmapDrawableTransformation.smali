.class public Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableTransformation;
.super Ljava/lang/Object;
.source "BitmapDrawableTransformation.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/Transformation<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/Transformation<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/glide/load/Transformation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DrawableTransformation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DrawableTransformation;-><init>(Lcom/netease/ntunisdk/glide/load/Transformation;Z)V

    .line 28
    invoke-static {v0}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/load/Transformation;

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    return-void
.end method

.method private static convertToBitmapDrawableResource(Lcom/netease/ntunisdk/glide/load/engine/Resource;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-interface {p0}, Lcom/netease/ntunisdk/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    return-object p0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrapped transformation unexpectedly returned a non BitmapDrawable resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-interface {p0}, Lcom/netease/ntunisdk/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertToDrawableResource(Lcom/netease/ntunisdk/glide/load/engine/Resource;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 62
    instance-of v0, p1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableTransformation;

    if-eqz v0, :cond_0

    .line 63
    check-cast p1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableTransformation;

    .line 64
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    iget-object p1, p1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public transform(Landroid/content/Context;Lcom/netease/ntunisdk/glide/load/engine/Resource;II)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;II)",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-static {p2}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableTransformation;->convertToDrawableResource(Lcom/netease/ntunisdk/glide/load/engine/Resource;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p2

    .line 39
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/Transformation;->transform(Landroid/content/Context;Lcom/netease/ntunisdk/glide/load/engine/Resource;II)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableTransformation;->convertToBitmapDrawableResource(Lcom/netease/ntunisdk/glide/load/engine/Resource;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableTransformation;->wrapped:Lcom/netease/ntunisdk/glide/load/Transformation;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/glide/load/Transformation;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method

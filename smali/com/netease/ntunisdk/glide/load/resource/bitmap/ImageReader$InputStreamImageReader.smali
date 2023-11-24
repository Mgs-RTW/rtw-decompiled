.class public final Lcom/netease/ntunisdk/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/resource/bitmap/ImageReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/resource/bitmap/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputStreamImageReader"
.end annotation


# instance fields
.field private final byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final dataRewinder:Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/List;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p3}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 43
    invoke-static {p2}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->parsers:Ljava/util/List;

    .line 45
    new-instance p2, Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;

    invoke-direct {p2, p1, p3}, Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;-><init>(Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V

    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->dataRewinder:Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;

    return-void
.end method


# virtual methods
.method public decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->dataRewinder:Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;->rewindAndGet()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getImageOrientation()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->parsers:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->dataRewinder:Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;

    .line 62
    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;->rewindAndGet()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 61
    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result v0

    return v0
.end method

.method public getImageType()Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->parsers:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->dataRewinder:Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;->rewindAndGet()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method

.method public stopGrowingBuffers()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;->dataRewinder:Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;->fixMarkLimits()V

    return-void
.end method

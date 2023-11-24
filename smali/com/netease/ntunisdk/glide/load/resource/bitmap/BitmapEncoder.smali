.class public Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapEncoder;
.super Ljava/lang/Object;
.source "BitmapEncoder.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/ResourceEncoder<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMPRESSION_FORMAT:Lcom/netease/ntunisdk/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/Option<",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPRESSION_QUALITY:Lcom/netease/ntunisdk/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BitmapEncoder"


# instance fields
.field private final arrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x5a

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_QUALITY:Lcom/netease/ntunisdk/glide/load/Option;

    const-string v0, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat"

    .line 51
    invoke-static {v0}, Lcom/netease/ntunisdk/glide/load/Option;->memory(Ljava/lang/String;)Lcom/netease/ntunisdk/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_FORMAT:Lcom/netease/ntunisdk/glide/load/Option;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapEncoder;->arrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    return-void
.end method

.method public constructor <init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapEncoder;->arrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    return-void
.end method

.method private getFormat(Landroid/graphics/Bitmap;Lcom/netease/ntunisdk/glide/load/Options;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 122
    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_FORMAT:Lcom/netease/ntunisdk/glide/load/Option;

    invoke-virtual {p2, v0}, Lcom/netease/ntunisdk/glide/load/Options;->get(Lcom/netease/ntunisdk/glide/load/Option;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap$CompressFormat;

    if-eqz p2, :cond_0

    return-object p2

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p1

    .line 128
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p1
.end method


# virtual methods
.method public encode(Lcom/netease/ntunisdk/glide/load/engine/Resource;Ljava/io/File;Lcom/netease/ntunisdk/glide/load/Options;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/io/File;",
            "Lcom/netease/ntunisdk/glide/load/Options;",
            ")Z"
        }
    .end annotation

    const-string v0, "BitmapEncoder"

    .line 69
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 70
    invoke-direct {p0, p1, p3}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapEncoder;->getFormat(Landroid/graphics/Bitmap;Lcom/netease/ntunisdk/glide/load/Options;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "encode: [%dx%d] %s"

    .line 71
    invoke-static {v4, v2, v3, v1}, Lcom/netease/ntunisdk/glide/util/pool/GlideTrace;->beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    .line 75
    sget-object v4, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_QUALITY:Lcom/netease/ntunisdk/glide/load/Option;

    invoke-virtual {p3, v4}, Lcom/netease/ntunisdk/glide/load/Options;->get(Lcom/netease/ntunisdk/glide/load/Option;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 80
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    :try_start_2
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapEncoder;->arrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    if-eqz p2, :cond_0

    .line 82
    new-instance p2, Lcom/netease/ntunisdk/glide/load/data/BufferedOutputStream;

    iget-object v6, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapEncoder;->arrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {p2, v7, v6}, Lcom/netease/ntunisdk/glide/load/data/BufferedOutputStream;-><init>(Ljava/io/OutputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, p2

    goto :goto_0

    :cond_0
    move-object v6, v7

    .line 84
    :goto_0
    :try_start_3
    invoke-virtual {p1, v1, v4, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 85
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v5, 0x1

    .line 94
    :goto_1
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v6, v7

    goto :goto_4

    :catch_0
    move-exception p2

    move-object v6, v7

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p2

    :goto_2
    const/4 v4, 0x3

    .line 88
    :try_start_5
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Failed to encode Bitmap"

    .line 89
    invoke-static {v0, v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_1
    if-eqz v6, :cond_2

    goto :goto_1

    :catch_2
    :cond_2
    :goto_3
    const/4 p2, 0x2

    .line 101
    :try_start_6
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Compressed with type: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of size "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-static {v2, v3}, Lcom/netease/ntunisdk/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", options format: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_FORMAT:Lcom/netease/ntunisdk/glide/load/Option;

    .line 111
    invoke-virtual {p3, v1}, Lcom/netease/ntunisdk/glide/load/Options;->get(Lcom/netease/ntunisdk/glide/load/Option;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", hasAlpha: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 117
    :cond_3
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/pool/GlideTrace;->endSection()V

    return v5

    :goto_4
    if-eqz v6, :cond_4

    .line 94
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 97
    :catch_3
    :cond_4
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    .line 117
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/pool/GlideTrace;->endSection()V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/File;Lcom/netease/ntunisdk/glide/load/Options;)Z
    .locals 0

    .line 34
    check-cast p1, Lcom/netease/ntunisdk/glide/load/engine/Resource;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapEncoder;->encode(Lcom/netease/ntunisdk/glide/load/engine/Resource;Ljava/io/File;Lcom/netease/ntunisdk/glide/load/Options;)Z

    move-result p1

    return p1
.end method

.method public getEncodeStrategy(Lcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/EncodeStrategy;
    .locals 0

    .line 135
    sget-object p1, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;->TRANSFORMED:Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    return-object p1
.end method

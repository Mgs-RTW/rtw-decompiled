.class public Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;
.super Ljava/lang/Object;
.source "VideoDecoder.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$VideoDecoderException;,
        Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;,
        Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$ParcelFileDescriptorInitializer;,
        Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$AssetFileDescriptorInitializer;,
        Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer;,
        Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/ResourceDecoder<",
        "TT;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;

.field public static final DEFAULT_FRAME:J = -0x1L

.field static final DEFAULT_FRAME_OPTION:I = 0x2

.field public static final FRAME_OPTION:Lcom/netease/ntunisdk/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VideoDecoder"

.field public static final TARGET_FRAME:Lcom/netease/ntunisdk/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/Option<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final factory:Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;

.field private final initializer:Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$1;

    invoke-direct {v1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$1;-><init>()V

    const-string v2, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    .line 58
    invoke-static {v2, v0, v1}, Lcom/netease/ntunisdk/glide/load/Option;->disk(Ljava/lang/String;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/Option$CacheKeyUpdater;)Lcom/netease/ntunisdk/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->TARGET_FRAME:Lcom/netease/ntunisdk/glide/load/Option;

    const/4 v0, 0x2

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$2;

    invoke-direct {v1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$2;-><init>()V

    const-string v2, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    .line 88
    invoke-static {v2, v0, v1}, Lcom/netease/ntunisdk/glide/load/Option;->disk(Ljava/lang/String;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/Option$CacheKeyUpdater;)Lcom/netease/ntunisdk/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->FRAME_OPTION:Lcom/netease/ntunisdk/glide/load/Option;

    .line 111
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->DEFAULT_FACTORY:Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;

    return-void
.end method

.method constructor <init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer<",
            "TT;>;)V"
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->DEFAULT_FACTORY:Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;-><init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer;Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer;Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer<",
            "TT;>;",
            "Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 141
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->initializer:Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer;

    .line 142
    iput-object p3, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->factory:Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;

    return-void
.end method

.method public static asset(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/netease/ntunisdk/glide/load/ResourceDecoder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/ResourceDecoder<",
            "Landroid/content/res/AssetFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;

    new-instance v1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$AssetFileDescriptorInitializer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$AssetFileDescriptorInitializer;-><init>(Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$1;)V

    invoke-direct {v0, p0, v1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;-><init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer;)V

    return-object v0
.end method

.method public static byteBuffer(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/netease/ntunisdk/glide/load/ResourceDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/ResourceDecoder<",
            "Ljava/nio/ByteBuffer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;

    new-instance v1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;

    invoke-direct {v1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;-><init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer;)V

    return-object v0
.end method

.method private static decodeFrame(Landroid/media/MediaMetadataRetriever;JIIILcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;
    .locals 2

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/high16 v0, -0x80000000

    if-eq p4, v0, :cond_0

    if-eq p5, v0, :cond_0

    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->NONE:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

    if-eq p6, v0, :cond_0

    .line 210
    invoke-static/range {p0 .. p6}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->decodeScaledFrame(Landroid/media/MediaMetadataRetriever;JIIILcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_1

    .line 215
    invoke-static {p0, p1, p2, p3}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->decodeOriginalFrame(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;

    move-result-object p4

    :cond_1
    if-eqz p4, :cond_2

    return-object p4

    .line 223
    :cond_2
    new-instance p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$VideoDecoderException;

    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$VideoDecoderException;-><init>()V

    throw p0
.end method

.method private static decodeOriginalFrame(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;
    .locals 0

    .line 285
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static decodeScaledFrame(Landroid/media/MediaMetadataRetriever;JIIILcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;
    .locals 9

    const/16 v0, 0x12

    .line 241
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x13

    .line 245
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x18

    .line 249
    invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    :cond_0
    move v8, v1

    move v1, v0

    move v0, v8

    .line 260
    :cond_1
    invoke-virtual {p6, v0, v1, p4, p5}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result p4

    int-to-float p5, v0

    mul-float p5, p5, p4

    .line 262
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float p5, v1

    mul-float p4, p4, p5

    .line 263
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    .line 265
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x3

    const-string p2, "VideoDecoder"

    .line 272
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame"

    .line 273
    invoke-static {p2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parcel(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/netease/ntunisdk/glide/load/ResourceDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/ResourceDecoder<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;

    new-instance v1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$ParcelFileDescriptorInitializer;

    invoke-direct {v1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$ParcelFileDescriptorInitializer;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;-><init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer;)V

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lcom/netease/ntunisdk/glide/load/Options;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->TARGET_FRAME:Lcom/netease/ntunisdk/glide/load/Option;

    invoke-virtual {p4, v0}, Lcom/netease/ntunisdk/glide/load/Options;->get(Lcom/netease/ntunisdk/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->FRAME_OPTION:Lcom/netease/ntunisdk/glide/load/Option;

    invoke-virtual {p4, v0}, Lcom/netease/ntunisdk/glide/load/Options;->get(Lcom/netease/ntunisdk/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 166
    :cond_2
    sget-object v1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/netease/ntunisdk/glide/load/Option;

    invoke-virtual {p4, v1}, Lcom/netease/ntunisdk/glide/load/Options;->get(Lcom/netease/ntunisdk/glide/load/Option;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

    if-nez p4, :cond_3

    .line 168
    sget-object p4, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->DEFAULT:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

    :cond_3
    move-object v7, p4

    .line 172
    iget-object p4, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->factory:Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;

    invoke-virtual {p4}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory;->build()Landroid/media/MediaMetadataRetriever;

    move-result-object p4

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->initializer:Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer;

    invoke-interface {v1, p4, p1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer;->initialize(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v1, p4

    move v5, p2

    move v6, p3

    .line 176
    invoke-static/range {v1 .. v7}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->decodeFrame(Landroid/media/MediaMetadataRetriever;JIIILcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 187
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapResource;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 184
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p1
.end method

.method public handles(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/Options;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/netease/ntunisdk/glide/load/Options;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

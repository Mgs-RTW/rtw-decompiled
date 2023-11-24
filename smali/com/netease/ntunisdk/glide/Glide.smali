.class public Lcom/netease/ntunisdk/glide/Glide;
.super Ljava/lang/Object;
.source "Glide.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISK_CACHE_DIR:Ljava/lang/String; = "image_manager_disk_cache"

.field private static final TAG:Ljava/lang/String; = "Glide"

.field private static volatile glide:Lcom/netease/ntunisdk/glide/Glide;

.field private static volatile isInitializing:Z


# instance fields
.field private final arrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

.field private bitmapPreFiller:Lcom/netease/ntunisdk/glide/load/engine/prefill/BitmapPreFiller;

.field private final connectivityMonitorFactory:Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;

.field private final defaultRequestOptionsFactory:Lcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;

.field private final engine:Lcom/netease/ntunisdk/glide/load/engine/Engine;

.field private final glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

.field private final managers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/RequestManager;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryCache:Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;

.field private memoryCategory:Lcom/netease/ntunisdk/glide/MemoryCategory;

.field private final registry:Lcom/netease/ntunisdk/glide/Registry;

.field private final requestManagerRetriever:Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/glide/load/engine/Engine;Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;ILcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;Ljava/util/Map;Ljava/util/List;Lcom/netease/ntunisdk/glide/GlideExperiments;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netease/ntunisdk/glide/load/engine/Engine;",
            "Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;",
            "Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;",
            "Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;",
            "I",
            "Lcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/netease/ntunisdk/glide/TransitionOptions<",
            "**>;>;",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/netease/ntunisdk/glide/GlideExperiments;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    .line 391
    const-class v4, [B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/netease/ntunisdk/glide/Glide;->managers:Ljava/util/List;

    .line 137
    sget-object v5, Lcom/netease/ntunisdk/glide/MemoryCategory;->NORMAL:Lcom/netease/ntunisdk/glide/MemoryCategory;

    iput-object v5, v0, Lcom/netease/ntunisdk/glide/Glide;->memoryCategory:Lcom/netease/ntunisdk/glide/MemoryCategory;

    move-object/from16 v9, p2

    .line 392
    iput-object v9, v0, Lcom/netease/ntunisdk/glide/Glide;->engine:Lcom/netease/ntunisdk/glide/load/engine/Engine;

    .line 393
    iput-object v1, v0, Lcom/netease/ntunisdk/glide/Glide;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 394
    iput-object v3, v0, Lcom/netease/ntunisdk/glide/Glide;->arrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    move-object/from16 v5, p3

    .line 395
    iput-object v5, v0, Lcom/netease/ntunisdk/glide/Glide;->memoryCache:Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;

    move-object/from16 v5, p6

    .line 396
    iput-object v5, v0, Lcom/netease/ntunisdk/glide/Glide;->requestManagerRetriever:Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;

    move-object/from16 v5, p7

    .line 397
    iput-object v5, v0, Lcom/netease/ntunisdk/glide/Glide;->connectivityMonitorFactory:Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;

    move-object/from16 v6, p9

    .line 398
    iput-object v6, v0, Lcom/netease/ntunisdk/glide/Glide;->defaultRequestOptionsFactory:Lcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;

    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 402
    new-instance v7, Lcom/netease/ntunisdk/glide/Registry;

    invoke-direct {v7}, Lcom/netease/ntunisdk/glide/Registry;-><init>()V

    iput-object v7, v0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    .line 403
    iget-object v7, v0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    new-instance v8, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DefaultImageHeaderParser;

    invoke-direct {v8}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DefaultImageHeaderParser;-><init>()V

    invoke-virtual {v7, v8}, Lcom/netease/ntunisdk/glide/Registry;->register(Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;)Lcom/netease/ntunisdk/glide/Registry;

    .line 406
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1b

    if-lt v7, v8, :cond_0

    .line 407
    iget-object v7, v0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    new-instance v8, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ExifInterfaceImageHeaderParser;

    invoke-direct {v8}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ExifInterfaceImageHeaderParser;-><init>()V

    invoke-virtual {v7, v8}, Lcom/netease/ntunisdk/glide/Registry;->register(Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;)Lcom/netease/ntunisdk/glide/Registry;

    .line 410
    :cond_0
    iget-object v7, v0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v7

    .line 412
    new-instance v8, Lcom/netease/ntunisdk/glide/load/resource/gif/ByteBufferGifDecoder;

    invoke-direct {v8, v2, v7, v1, v3}, Lcom/netease/ntunisdk/glide/load/resource/gif/ByteBufferGifDecoder;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 415
    invoke-static/range {p4 .. p4}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->parcel(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/netease/ntunisdk/glide/load/ResourceDecoder;

    move-result-object v10

    .line 418
    new-instance v11, Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;

    iget-object v12, v0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    .line 420
    invoke-virtual {v12}, Lcom/netease/ntunisdk/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-direct {v11, v12, v13, v1, v3}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 424
    const-class v12, Lcom/netease/ntunisdk/glide/GlideBuilder$EnableImageDecoderForBitmaps;

    move-object/from16 v13, p12

    invoke-virtual {v13, v12}, Lcom/netease/ntunisdk/glide/GlideExperiments;->isEnabled(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_1

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1c

    if-lt v12, v14, :cond_1

    .line 426
    new-instance v12, Lcom/netease/ntunisdk/glide/load/resource/bitmap/InputStreamBitmapImageDecoderResourceDecoder;

    invoke-direct {v12}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/InputStreamBitmapImageDecoderResourceDecoder;-><init>()V

    .line 427
    new-instance v14, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ByteBufferBitmapImageDecoderResourceDecoder;

    invoke-direct {v14}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ByteBufferBitmapImageDecoderResourceDecoder;-><init>()V

    goto :goto_0

    .line 429
    :cond_1
    new-instance v14, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ByteBufferBitmapDecoder;

    invoke-direct {v14, v11}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ByteBufferBitmapDecoder;-><init>(Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;)V

    .line 430
    new-instance v12, Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v12, v11, v3}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 433
    :goto_0
    new-instance v15, Lcom/netease/ntunisdk/glide/load/resource/drawable/ResourceDrawableDecoder;

    invoke-direct {v15, v2}, Lcom/netease/ntunisdk/glide/load/resource/drawable/ResourceDrawableDecoder;-><init>(Landroid/content/Context;)V

    .line 434
    new-instance v6, Lcom/netease/ntunisdk/glide/load/model/ResourceLoader$StreamFactory;

    invoke-direct {v6, v5}, Lcom/netease/ntunisdk/glide/load/model/ResourceLoader$StreamFactory;-><init>(Landroid/content/res/Resources;)V

    .line 436
    new-instance v9, Lcom/netease/ntunisdk/glide/load/model/ResourceLoader$UriFactory;

    invoke-direct {v9, v5}, Lcom/netease/ntunisdk/glide/load/model/ResourceLoader$UriFactory;-><init>(Landroid/content/res/Resources;)V

    .line 437
    new-instance v13, Lcom/netease/ntunisdk/glide/load/model/ResourceLoader$FileDescriptorFactory;

    invoke-direct {v13, v5}, Lcom/netease/ntunisdk/glide/load/model/ResourceLoader$FileDescriptorFactory;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v16, v4

    .line 439
    new-instance v4, Lcom/netease/ntunisdk/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;

    invoke-direct {v4, v5}, Lcom/netease/ntunisdk/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/res/Resources;)V

    .line 441
    new-instance v2, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapEncoder;

    invoke-direct {v2, v3}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapEncoder;-><init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V

    move-object/from16 p3, v4

    .line 443
    new-instance v4, Lcom/netease/ntunisdk/glide/load/resource/transcode/BitmapBytesTranscoder;

    invoke-direct {v4}, Lcom/netease/ntunisdk/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>()V

    move-object/from16 p6, v4

    .line 444
    new-instance v4, Lcom/netease/ntunisdk/glide/load/resource/transcode/GifDrawableBytesTranscoder;

    invoke-direct {v4}, Lcom/netease/ntunisdk/glide/load/resource/transcode/GifDrawableBytesTranscoder;-><init>()V

    move-object/from16 p7, v4

    .line 446
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v17, v4

    .line 448
    iget-object v4, v0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    move-object/from16 v18, v9

    const-class v9, Ljava/nio/ByteBuffer;

    move-object/from16 v19, v13

    new-instance v13, Lcom/netease/ntunisdk/glide/load/model/ByteBufferEncoder;

    invoke-direct {v13}, Lcom/netease/ntunisdk/glide/load/model/ByteBufferEncoder;-><init>()V

    .line 449
    invoke-virtual {v4, v9, v13}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/Encoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v4

    const-class v9, Ljava/io/InputStream;

    new-instance v13, Lcom/netease/ntunisdk/glide/load/model/StreamEncoder;

    invoke-direct {v13, v3}, Lcom/netease/ntunisdk/glide/load/model/StreamEncoder;-><init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 450
    invoke-virtual {v4, v9, v13}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/Encoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v4

    const-class v9, Ljava/nio/ByteBuffer;

    const-class v13, Landroid/graphics/Bitmap;

    move-object/from16 v20, v6

    const-string v6, "Bitmap"

    .line 452
    invoke-virtual {v4, v6, v9, v13, v14}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v4

    const-class v9, Ljava/io/InputStream;

    const-class v13, Landroid/graphics/Bitmap;

    .line 453
    invoke-virtual {v4, v6, v9, v13, v12}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    .line 455
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 456
    iget-object v4, v0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    const-class v9, Landroid/os/ParcelFileDescriptor;

    const-class v13, Landroid/graphics/Bitmap;

    move-object/from16 v21, v15

    new-instance v15, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ParcelFileDescriptorBitmapDecoder;

    invoke-direct {v15, v11}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ParcelFileDescriptorBitmapDecoder;-><init>(Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;)V

    invoke-virtual {v4, v6, v9, v13, v15}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    goto :goto_1

    :cond_2
    move-object/from16 v21, v15

    .line 463
    :goto_1
    iget-object v4, v0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    const-class v9, Landroid/os/ParcelFileDescriptor;

    const-class v11, Landroid/graphics/Bitmap;

    .line 464
    invoke-virtual {v4, v6, v9, v11, v10}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v4

    const-class v9, Landroid/content/res/AssetFileDescriptor;

    const-class v11, Landroid/graphics/Bitmap;

    .line 473
    invoke-static/range {p4 .. p4}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->asset(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/netease/ntunisdk/glide/load/ResourceDecoder;

    move-result-object v13

    .line 469
    invoke-virtual {v4, v6, v9, v11, v13}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v4

    const-class v9, Landroid/graphics/Bitmap;

    const-class v11, Landroid/graphics/Bitmap;

    .line 474
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/netease/ntunisdk/glide/load/model/UnitModelLoader$Factory;

    move-result-object v13

    invoke-virtual {v4, v9, v11, v13}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v4

    const-class v9, Landroid/graphics/Bitmap;

    const-class v11, Landroid/graphics/Bitmap;

    new-instance v13, Lcom/netease/ntunisdk/glide/load/resource/bitmap/UnitBitmapDecoder;

    invoke-direct {v13}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/UnitBitmapDecoder;-><init>()V

    .line 475
    invoke-virtual {v4, v6, v9, v11, v13}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v4

    const-class v9, Landroid/graphics/Bitmap;

    .line 476
    invoke-virtual {v4, v9, v2}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceEncoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v4

    const-class v9, Ljava/nio/ByteBuffer;

    const-class v11, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v13, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v13, v5, v14}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)V

    const-string v14, "BitmapDrawable"

    .line 478
    invoke-virtual {v4, v14, v9, v11, v13}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v4

    const-class v9, Ljava/io/InputStream;

    const-class v11, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v13, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v13, v5, v12}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)V

    .line 483
    invoke-virtual {v4, v14, v9, v11, v13}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v4

    const-class v9, Landroid/os/ParcelFileDescriptor;

    const-class v11, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v12, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v12, v5, v10}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)V

    .line 488
    invoke-virtual {v4, v14, v9, v11, v12}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v4

    const-class v9, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v10, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableEncoder;

    invoke-direct {v10, v1, v2}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableEncoder;-><init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/load/ResourceEncoder;)V

    .line 493
    invoke-virtual {v4, v9, v10}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceEncoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/io/InputStream;

    const-class v9, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;

    new-instance v10, Lcom/netease/ntunisdk/glide/load/resource/gif/StreamGifDecoder;

    invoke-direct {v10, v7, v8, v3}, Lcom/netease/ntunisdk/glide/load/resource/gif/StreamGifDecoder;-><init>(Ljava/util/List;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V

    const-string v7, "Gif"

    .line 495
    invoke-virtual {v2, v7, v4, v9, v10}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/nio/ByteBuffer;

    const-class v9, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;

    .line 500
    invoke-virtual {v2, v7, v4, v9, v8}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawableEncoder;

    invoke-direct {v7}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawableEncoder;-><init>()V

    .line 501
    invoke-virtual {v2, v4, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceEncoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;

    const-class v7, Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;

    .line 505
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/netease/ntunisdk/glide/load/model/UnitModelLoader$Factory;

    move-result-object v8

    .line 504
    invoke-virtual {v2, v4, v7, v8}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;

    const-class v7, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameResourceDecoder;

    invoke-direct {v8, v1}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameResourceDecoder;-><init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 506
    invoke-virtual {v2, v6, v4, v7, v8}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/net/Uri;

    const-class v6, Landroid/graphics/drawable/Drawable;

    move-object/from16 v7, v21

    .line 512
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/net/Uri;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ResourceBitmapDecoder;

    invoke-direct {v8, v7, v1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ResourceBitmapDecoder;-><init>(Lcom/netease/ntunisdk/glide/load/resource/drawable/ResourceDrawableDecoder;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 513
    invoke-virtual {v2, v4, v6, v8}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    new-instance v4, Lcom/netease/ntunisdk/glide/load/resource/bytes/ByteBufferRewinder$Factory;

    invoke-direct {v4}, Lcom/netease/ntunisdk/glide/load/resource/bytes/ByteBufferRewinder$Factory;-><init>()V

    .line 516
    invoke-virtual {v2, v4}, Lcom/netease/ntunisdk/glide/Registry;->register(Lcom/netease/ntunisdk/glide/load/data/DataRewinder$Factory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/io/File;

    const-class v6, Ljava/nio/ByteBuffer;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/ByteBufferFileLoader$Factory;

    invoke-direct {v7}, Lcom/netease/ntunisdk/glide/load/model/ByteBufferFileLoader$Factory;-><init>()V

    .line 517
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/io/File;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/FileLoader$StreamFactory;

    invoke-direct {v7}, Lcom/netease/ntunisdk/glide/load/model/FileLoader$StreamFactory;-><init>()V

    .line 518
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/io/File;

    const-class v6, Ljava/io/File;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/resource/file/FileDecoder;

    invoke-direct {v7}, Lcom/netease/ntunisdk/glide/load/resource/file/FileDecoder;-><init>()V

    .line 519
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/io/File;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileDescriptorFactory;

    invoke-direct {v7}, Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileDescriptorFactory;-><init>()V

    .line 520
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/io/File;

    const-class v6, Ljava/io/File;

    .line 522
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/netease/ntunisdk/glide/load/model/UnitModelLoader$Factory;

    move-result-object v7

    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    new-instance v4, Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder$Factory;

    invoke-direct {v4, v3}, Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder$Factory;-><init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 524
    invoke-virtual {v2, v4}, Lcom/netease/ntunisdk/glide/Registry;->register(Lcom/netease/ntunisdk/glide/load/data/DataRewinder$Factory;)Lcom/netease/ntunisdk/glide/Registry;

    .line 526
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 527
    iget-object v2, v0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    new-instance v4, Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder$Factory;

    invoke-direct {v4}, Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder$Factory;-><init>()V

    invoke-virtual {v2, v4}, Lcom/netease/ntunisdk/glide/Registry;->register(Lcom/netease/ntunisdk/glide/load/data/DataRewinder$Factory;)Lcom/netease/ntunisdk/glide/Registry;

    .line 530
    :cond_3
    iget-object v2, v0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/io/InputStream;

    move-object/from16 v7, v20

    .line 531
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v8, v19

    .line 532
    invoke-virtual {v2, v4, v6, v8}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/lang/Integer;

    const-class v6, Ljava/io/InputStream;

    .line 533
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/lang/Integer;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    .line 534
    invoke-virtual {v2, v4, v6, v8}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/lang/Integer;

    const-class v6, Landroid/net/Uri;

    move-object/from16 v7, v18

    .line 535
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v8, p3

    .line 536
    invoke-virtual {v2, v4, v6, v8}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/lang/Integer;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    .line 537
    invoke-virtual {v2, v4, v6, v8}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/net/Uri;

    .line 538
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/lang/String;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$StreamFactory;

    invoke-direct {v7}, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V

    .line 539
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$StreamFactory;

    invoke-direct {v7}, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V

    .line 540
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/lang/String;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/StringLoader$StreamFactory;

    invoke-direct {v7}, Lcom/netease/ntunisdk/glide/load/model/StringLoader$StreamFactory;-><init>()V

    .line 541
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/lang/String;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/StringLoader$FileDescriptorFactory;

    invoke-direct {v7}, Lcom/netease/ntunisdk/glide/load/model/StringLoader$FileDescriptorFactory;-><init>()V

    .line 542
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/lang/String;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/StringLoader$AssetFileDescriptorFactory;

    invoke-direct {v7}, Lcom/netease/ntunisdk/glide/load/model/StringLoader$AssetFileDescriptorFactory;-><init>()V

    .line 543
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/AssetUriLoader$StreamFactory;

    .line 545
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/netease/ntunisdk/glide/load/model/AssetUriLoader$StreamFactory;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/net/Uri;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/AssetUriLoader$FileDescriptorFactory;

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/netease/ntunisdk/glide/load/model/AssetUriLoader$FileDescriptorFactory;-><init>(Landroid/content/res/AssetManager;)V

    .line 546
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;

    move-object/from16 v8, p1

    invoke-direct {v7, v8}, Lcom/netease/ntunisdk/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 550
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;

    invoke-direct {v7, v8}, Lcom/netease/ntunisdk/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 551
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    .line 552
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_4

    .line 553
    iget-object v2, v0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory;

    invoke-direct {v7, v8}, Lcom/netease/ntunisdk/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    .line 555
    iget-object v2, v0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    const-class v4, Landroid/net/Uri;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/stream/QMediaStoreUriLoader$FileDescriptorFactory;

    invoke-direct {v7, v8}, Lcom/netease/ntunisdk/glide/load/model/stream/QMediaStoreUriLoader$FileDescriptorFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    .line 560
    :cond_4
    iget-object v2, v0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/UriLoader$StreamFactory;

    move-object/from16 v9, v17

    invoke-direct {v7, v9}, Lcom/netease/ntunisdk/glide/load/model/UriLoader$StreamFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 561
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/net/Uri;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/UriLoader$FileDescriptorFactory;

    invoke-direct {v7, v9}, Lcom/netease/ntunisdk/glide/load/model/UriLoader$FileDescriptorFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 562
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/net/Uri;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/UriLoader$AssetFileDescriptorFactory;

    invoke-direct {v7, v9}, Lcom/netease/ntunisdk/glide/load/model/UriLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 566
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/UrlUriLoader$StreamFactory;

    invoke-direct {v7}, Lcom/netease/ntunisdk/glide/load/model/UrlUriLoader$StreamFactory;-><init>()V

    .line 570
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/net/URL;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/stream/UrlLoader$StreamFactory;

    invoke-direct {v7}, Lcom/netease/ntunisdk/glide/load/model/stream/UrlLoader$StreamFactory;-><init>()V

    .line 571
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/net/Uri;

    const-class v6, Ljava/io/File;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/MediaStoreFileLoader$Factory;

    invoke-direct {v7, v8}, Lcom/netease/ntunisdk/glide/load/model/MediaStoreFileLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 572
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Lcom/netease/ntunisdk/glide/load/model/GlideUrl;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/model/stream/HttpGlideUrlLoader$Factory;

    invoke-direct {v7}, Lcom/netease/ntunisdk/glide/load/model/stream/HttpGlideUrlLoader$Factory;-><init>()V

    .line 573
    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/nio/ByteBuffer;

    new-instance v6, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$ByteBufferFactory;

    invoke-direct {v6}, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$ByteBufferFactory;-><init>()V

    move-object/from16 v7, v16

    .line 574
    invoke-virtual {v2, v7, v4, v6}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$StreamFactory;

    invoke-direct {v6}, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$StreamFactory;-><init>()V

    .line 575
    invoke-virtual {v2, v7, v4, v6}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/net/Uri;

    const-class v6, Landroid/net/Uri;

    .line 576
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/netease/ntunisdk/glide/load/model/UnitModelLoader$Factory;

    move-result-object v9

    invoke-virtual {v2, v4, v6, v9}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/graphics/drawable/Drawable;

    const-class v6, Landroid/graphics/drawable/Drawable;

    .line 577
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/netease/ntunisdk/glide/load/model/UnitModelLoader$Factory;

    move-result-object v9

    invoke-virtual {v2, v4, v6, v9}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/graphics/drawable/Drawable;

    const-class v6, Landroid/graphics/drawable/Drawable;

    new-instance v9, Lcom/netease/ntunisdk/glide/load/resource/drawable/UnitDrawableDecoder;

    invoke-direct {v9}, Lcom/netease/ntunisdk/glide/load/resource/drawable/UnitDrawableDecoder;-><init>()V

    .line 578
    invoke-virtual {v2, v4, v6, v9}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v9, Lcom/netease/ntunisdk/glide/load/resource/transcode/BitmapDrawableTranscoder;

    invoke-direct {v9, v5}, Lcom/netease/ntunisdk/glide/load/resource/transcode/BitmapDrawableTranscoder;-><init>(Landroid/content/res/Resources;)V

    .line 580
    invoke-virtual {v2, v4, v6, v9}, Lcom/netease/ntunisdk/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/graphics/Bitmap;

    move-object/from16 v6, p6

    .line 581
    invoke-virtual {v2, v4, v7, v6}, Lcom/netease/ntunisdk/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Landroid/graphics/drawable/Drawable;

    new-instance v9, Lcom/netease/ntunisdk/glide/load/resource/transcode/DrawableBytesTranscoder;

    move-object/from16 v10, p7

    invoke-direct {v9, v1, v6, v10}, Lcom/netease/ntunisdk/glide/load/resource/transcode/DrawableBytesTranscoder;-><init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 582
    invoke-virtual {v2, v4, v7, v9}, Lcom/netease/ntunisdk/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;)Lcom/netease/ntunisdk/glide/Registry;

    move-result-object v2

    const-class v4, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;

    .line 587
    invoke-virtual {v2, v4, v7, v10}, Lcom/netease/ntunisdk/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/resource/transcode/ResourceTranscoder;)Lcom/netease/ntunisdk/glide/Registry;

    .line 589
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_5

    .line 591
    invoke-static/range {p4 .. p4}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/VideoDecoder;->byteBuffer(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/netease/ntunisdk/glide/load/ResourceDecoder;

    move-result-object v1

    .line 592
    iget-object v2, v0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    const-class v4, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4, v6, v1}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    .line 593
    iget-object v2, v0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    const-class v4, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v7, v5, v1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)V

    invoke-virtual {v2, v4, v6, v7}, Lcom/netease/ntunisdk/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/load/ResourceDecoder;)Lcom/netease/ntunisdk/glide/Registry;

    .line 599
    :cond_5
    new-instance v5, Lcom/netease/ntunisdk/glide/request/target/ImageViewTargetFactory;

    invoke-direct {v5}, Lcom/netease/ntunisdk/glide/request/target/ImageViewTargetFactory;-><init>()V

    .line 600
    new-instance v12, Lcom/netease/ntunisdk/glide/GlideContext;

    iget-object v4, v0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p2

    move-object/from16 v10, p12

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/netease/ntunisdk/glide/GlideContext;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/netease/ntunisdk/glide/Registry;Lcom/netease/ntunisdk/glide/request/target/ImageViewTargetFactory;Lcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;Ljava/util/Map;Ljava/util/List;Lcom/netease/ntunisdk/glide/load/engine/Engine;Lcom/netease/ntunisdk/glide/GlideExperiments;I)V

    iput-object v12, v0, Lcom/netease/ntunisdk/glide/Glide;->glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

    return-void
.end method

.method private static checkAndInitializeGlide(Landroid/content/Context;Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;)V
    .locals 1

    .line 207
    sget-boolean v0, Lcom/netease/ntunisdk/glide/Glide;->isInitializing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 212
    sput-boolean v0, Lcom/netease/ntunisdk/glide/Glide;->isInitializing:Z

    .line 213
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/glide/Glide;->initializeGlide(Landroid/content/Context;Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;)V

    const/4 p0, 0x0

    .line 214
    sput-boolean p0, Lcom/netease/ntunisdk/glide/Glide;->isInitializing:Z

    return-void

    .line 208
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enableHardwareBitmaps()V
    .locals 1

    .line 252
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->getInstance()Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->unblockHardwareBitmaps()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/Glide;
    .locals 3

    .line 189
    sget-object v0, Lcom/netease/ntunisdk/glide/Glide;->glide:Lcom/netease/ntunisdk/glide/Glide;

    if-nez v0, :cond_1

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/Glide;->getAnnotationGeneratedGlideModules(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;

    move-result-object v0

    .line 192
    const-class v1, Lcom/netease/ntunisdk/glide/Glide;

    monitor-enter v1

    .line 193
    :try_start_0
    sget-object v2, Lcom/netease/ntunisdk/glide/Glide;->glide:Lcom/netease/ntunisdk/glide/Glide;

    if-nez v2, :cond_0

    .line 194
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/glide/Glide;->checkAndInitializeGlide(Landroid/content/Context;Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;)V

    .line 196
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 199
    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/ntunisdk/glide/Glide;->glide:Lcom/netease/ntunisdk/glide/Glide;

    return-object p0
.end method

.method private static getAnnotationGeneratedGlideModules(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;
    .locals 5

    :try_start_0
    const-string v0, "com.netease.glide.GeneratedAppGlideModuleImpl"

    .line 345
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 346
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 365
    invoke-static {p0}, Lcom/netease/ntunisdk/glide/Glide;->throwIncorrectGlideModule(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 363
    invoke-static {p0}, Lcom/netease/ntunisdk/glide/Glide;->throwIncorrectGlideModule(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 361
    invoke-static {p0}, Lcom/netease/ntunisdk/glide/Glide;->throwIncorrectGlideModule(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 359
    invoke-static {p0}, Lcom/netease/ntunisdk/glide/Glide;->throwIncorrectGlideModule(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_4
    nop

    const/4 p0, 0x5

    const-string v0, "Glide"

    .line 349
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 350
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "image_manager_disk_cache"

    .line 152
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 167
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 p0, 0x6

    const-string p1, "Glide"

    .line 174
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "default disk cache dir is null"

    .line 175
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method private static getRetriever(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 772
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 777
    invoke-static {p0}, Lcom/netease/ntunisdk/glide/Glide;->get(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/Glide;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/Glide;->getRequestManagerRetriever()Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Lcom/netease/ntunisdk/glide/GlideBuilder;)V
    .locals 3

    .line 233
    invoke-static {p0}, Lcom/netease/ntunisdk/glide/Glide;->getAnnotationGeneratedGlideModules(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;

    move-result-object v0

    .line 234
    const-class v1, Lcom/netease/ntunisdk/glide/Glide;

    monitor-enter v1

    .line 235
    :try_start_0
    sget-object v2, Lcom/netease/ntunisdk/glide/Glide;->glide:Lcom/netease/ntunisdk/glide/Glide;

    if-eqz v2, :cond_0

    .line 236
    invoke-static {}, Lcom/netease/ntunisdk/glide/Glide;->tearDown()V

    .line 238
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/netease/ntunisdk/glide/Glide;->initializeGlide(Landroid/content/Context;Lcom/netease/ntunisdk/glide/GlideBuilder;Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;)V

    .line 239
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized init(Lcom/netease/ntunisdk/glide/Glide;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/netease/ntunisdk/glide/Glide;

    monitor-enter v0

    .line 225
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/glide/Glide;->glide:Lcom/netease/ntunisdk/glide/Glide;

    if-eqz v1, :cond_0

    .line 226
    invoke-static {}, Lcom/netease/ntunisdk/glide/Glide;->tearDown()V

    .line 228
    :cond_0
    sput-object p0, Lcom/netease/ntunisdk/glide/Glide;->glide:Lcom/netease/ntunisdk/glide/Glide;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initializeGlide(Landroid/content/Context;Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;)V
    .locals 1

    .line 269
    new-instance v0, Lcom/netease/ntunisdk/glide/GlideBuilder;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/GlideBuilder;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/netease/ntunisdk/glide/Glide;->initializeGlide(Landroid/content/Context;Lcom/netease/ntunisdk/glide/GlideBuilder;Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;)V

    return-void
.end method

.method private static initializeGlide(Landroid/content/Context;Lcom/netease/ntunisdk/glide/GlideBuilder;Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;)V
    .locals 8

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 279
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 280
    invoke-virtual {p2}, Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;->isManifestParsingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/glide/module/ManifestParser;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/glide/module/ManifestParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/module/ManifestParser;->parse()Ljava/util/List;

    move-result-object v0

    :cond_1
    const/4 v1, 0x3

    const-string v2, "Glide"

    if-eqz p2, :cond_4

    .line 285
    invoke-virtual {p2}, Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 286
    invoke-virtual {p2}, Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    move-result-object v3

    .line 287
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 288
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 289
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/ntunisdk/glide/module/GlideModule;

    .line 290
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 293
    :cond_2
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 294
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 300
    :cond_4
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 301
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/glide/module/GlideModule;

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discovered GlideModule from manifest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 308
    invoke-virtual {p2}, Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;->getRequestManagerFactory()Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    move-result-object v1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 310
    :goto_2
    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/glide/GlideBuilder;->setRequestManagerFactory(Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V

    .line 311
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/glide/module/GlideModule;

    .line 312
    invoke-interface {v2, p0, p1}, Lcom/netease/ntunisdk/glide/module/GlideModule;->applyOptions(Landroid/content/Context;Lcom/netease/ntunisdk/glide/GlideBuilder;)V

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_8

    .line 315
    invoke-virtual {p2, p0, p1}, Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;->applyOptions(Landroid/content/Context;Lcom/netease/ntunisdk/glide/GlideBuilder;)V

    .line 317
    :cond_8
    invoke-virtual {p1, p0}, Lcom/netease/ntunisdk/glide/GlideBuilder;->build(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/Glide;

    move-result-object p1

    .line 318
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/glide/module/GlideModule;

    .line 320
    :try_start_0
    iget-object v2, p1, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    invoke-interface {v1, p0, p1, v2}, Lcom/netease/ntunisdk/glide/module/GlideModule;->registerComponents(Landroid/content/Context;Lcom/netease/ntunisdk/glide/Glide;Lcom/netease/ntunisdk/glide/Registry;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 322
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_9
    if-eqz p2, :cond_a

    .line 332
    iget-object v0, p1, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    invoke-virtual {p2, p0, p1, v0}, Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;->registerComponents(Landroid/content/Context;Lcom/netease/ntunisdk/glide/Glide;Lcom/netease/ntunisdk/glide/Registry;)V

    .line 334
    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 335
    sput-object p1, Lcom/netease/ntunisdk/glide/Glide;->glide:Lcom/netease/ntunisdk/glide/Glide;

    return-void
.end method

.method public static tearDown()V
    .locals 3

    .line 257
    const-class v0, Lcom/netease/ntunisdk/glide/Glide;

    monitor-enter v0

    .line 258
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/glide/Glide;->glide:Lcom/netease/ntunisdk/glide/Glide;

    if-eqz v1, :cond_0

    .line 259
    sget-object v1, Lcom/netease/ntunisdk/glide/Glide;->glide:Lcom/netease/ntunisdk/glide/Glide;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/Glide;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netease/ntunisdk/glide/Glide;->glide:Lcom/netease/ntunisdk/glide/Glide;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 260
    sget-object v1, Lcom/netease/ntunisdk/glide/Glide;->glide:Lcom/netease/ntunisdk/glide/Glide;

    iget-object v1, v1, Lcom/netease/ntunisdk/glide/Glide;->engine:Lcom/netease/ntunisdk/glide/load/engine/Engine;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/load/engine/Engine;->shutdown()V

    :cond_0
    const/4 v1, 0x0

    .line 262
    sput-object v1, Lcom/netease/ntunisdk/glide/Glide;->glide:Lcom/netease/ntunisdk/glide/Glide;

    .line 263
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static throwIncorrectGlideModule(Ljava/lang/Exception;)V
    .locals 2

    .line 371
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static with(Landroid/app/Activity;)Lcom/netease/ntunisdk/glide/RequestManager;
    .locals 1

    .line 816
    invoke-static {p0}, Lcom/netease/ntunisdk/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/netease/ntunisdk/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Fragment;)Lcom/netease/ntunisdk/glide/RequestManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 858
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;->get(Landroid/app/Fragment;)Lcom/netease/ntunisdk/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/RequestManager;
    .locals 1

    .line 804
    invoke-static {p0}, Lcom/netease/ntunisdk/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/view/View;)Lcom/netease/ntunisdk/glide/RequestManager;
    .locals 1

    .line 888
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;->get(Landroid/view/View;)Lcom/netease/ntunisdk/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lcom/netease/ntunisdk/glide/RequestManager;
    .locals 1

    .line 841
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/Fragment;)Lcom/netease/ntunisdk/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/FragmentActivity;)Lcom/netease/ntunisdk/glide/RequestManager;
    .locals 1

    .line 829
    invoke-static {p0}, Lcom/netease/ntunisdk/glide/Glide;->getRetriever(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/netease/ntunisdk/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearDiskCache()V
    .locals 1

    .line 733
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/Util;->assertBackgroundThread()V

    .line 734
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->engine:Lcom/netease/ntunisdk/glide/load/engine/Engine;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/engine/Engine;->clearDiskCache()V

    return-void
.end method

.method public clearMemory()V
    .locals 1

    .line 697
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/Util;->assertMainThread()V

    .line 699
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->memoryCache:Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;->clearMemory()V

    .line 700
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;->clearMemory()V

    .line 701
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->arrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;->clearMemory()V

    return-void
.end method

.method public getArrayPool()Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->arrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    return-object v0
.end method

.method public getBitmapPool()Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    return-object v0
.end method

.method getConnectivityMonitorFactory()Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->connectivityMonitorFactory:Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/GlideContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getGlideContext()Lcom/netease/ntunisdk/glide/GlideContext;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

    return-object v0
.end method

.method public getRegistry()Lcom/netease/ntunisdk/glide/Registry;
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->registry:Lcom/netease/ntunisdk/glide/Registry;

    return-object v0
.end method

.method public getRequestManagerRetriever()Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->requestManagerRetriever:Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 938
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/Glide;->clearMemory()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 928
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/Glide;->trimMemory(I)V

    return-void
.end method

.method public varargs declared-synchronized preFillBitmapPool([Lcom/netease/ntunisdk/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 4

    monitor-enter p0

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->bitmapPreFiller:Lcom/netease/ntunisdk/glide/load/engine/prefill/BitmapPreFiller;

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->defaultRequestOptionsFactory:Lcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;

    .line 682
    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/Glide$RequestOptionsFactory;->build()Lcom/netease/ntunisdk/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->getOptions()Lcom/netease/ntunisdk/glide/load/Options;

    move-result-object v0

    sget-object v1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/netease/ntunisdk/glide/load/Option;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/load/Options;->get(Lcom/netease/ntunisdk/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/load/DecodeFormat;

    .line 683
    new-instance v1, Lcom/netease/ntunisdk/glide/load/engine/prefill/BitmapPreFiller;

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/Glide;->memoryCache:Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/Glide;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v1, v2, v3, v0}, Lcom/netease/ntunisdk/glide/load/engine/prefill/BitmapPreFiller;-><init>(Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/load/DecodeFormat;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/glide/Glide;->bitmapPreFiller:Lcom/netease/ntunisdk/glide/load/engine/prefill/BitmapPreFiller;

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->bitmapPreFiller:Lcom/netease/ntunisdk/glide/load/engine/prefill/BitmapPreFiller;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/load/engine/prefill/BitmapPreFiller;->preFill([Lcom/netease/ntunisdk/glide/load/engine/prefill/PreFillType$Builder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method registerRequestManager(Lcom/netease/ntunisdk/glide/RequestManager;)V
    .locals 2

    .line 909
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v0

    .line 910
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    monitor-exit v0

    return-void

    .line 911
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register already registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 914
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method removeFromManagers(Lcom/netease/ntunisdk/glide/request/target/Target;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "*>;)Z"
        }
    .end annotation

    .line 897
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v0

    .line 898
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/glide/RequestManager;

    .line 899
    invoke-virtual {v2, p1}, Lcom/netease/ntunisdk/glide/RequestManager;->untrack(Lcom/netease/ntunisdk/glide/request/target/Target;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 900
    monitor-exit v0

    return p1

    .line 903
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public setMemoryCategory(Lcom/netease/ntunisdk/glide/MemoryCategory;)Lcom/netease/ntunisdk/glide/MemoryCategory;
    .locals 2

    .line 759
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/Util;->assertMainThread()V

    .line 761
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->memoryCache:Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;->setSizeMultiplier(F)V

    .line 762
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;->setSizeMultiplier(F)V

    .line 763
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->memoryCategory:Lcom/netease/ntunisdk/glide/MemoryCategory;

    .line 764
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/Glide;->memoryCategory:Lcom/netease/ntunisdk/glide/MemoryCategory;

    return-object v0
.end method

.method public trimMemory(I)V
    .locals 3

    .line 711
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/Util;->assertMainThread()V

    .line 714
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v0

    .line 715
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/glide/RequestManager;

    .line 716
    invoke-virtual {v2, p1}, Lcom/netease/ntunisdk/glide/RequestManager;->onTrimMemory(I)V

    goto :goto_0

    .line 718
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->memoryCache:Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;->trimMemory(I)V

    .line 721
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;->trimMemory(I)V

    .line 722
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->arrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;->trimMemory(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 718
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method unregisterRequestManager(Lcom/netease/ntunisdk/glide/RequestManager;)V
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/Glide;->managers:Ljava/util/List;

    monitor-enter v0

    .line 919
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 922
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/Glide;->managers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 923
    monitor-exit v0

    return-void

    .line 920
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unregister not yet registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 923
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

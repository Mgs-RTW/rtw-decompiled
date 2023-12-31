.class Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;,
        Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;,
        Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;,
        Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$FrameCallback;
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$FrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private current:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

.field private firstFrame:Landroid/graphics/Bitmap;

.field private firstFrameSize:I

.field private final gifDecoder:Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;

.field private final handler:Landroid/os/Handler;

.field private height:I

.field private isCleared:Z

.field private isLoadPending:Z

.field private isRunning:Z

.field private next:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

.field private onEveryFrameListener:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;

.field private pendingTarget:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

.field private requestBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final requestManager:Lcom/netease/ntunisdk/glide/RequestManager;

.field private startFromFirstFrame:Z

.field private transformation:Lcom/netease/ntunisdk/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/glide/Glide;Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;IILcom/netease/ntunisdk/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/Glide;",
            "Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;",
            "II",
            "Lcom/netease/ntunisdk/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/Glide;->getBitmapPool()Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/Glide;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/Glide;->with(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/RequestManager;

    move-result-object v2

    .line 74
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/Glide;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/glide/Glide;->with(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/RequestManager;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->getRequestBuilder(Lcom/netease/ntunisdk/glide/RequestManager;II)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    .line 69
    invoke-direct/range {v0 .. v7}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;-><init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/RequestManager;Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/netease/ntunisdk/glide/RequestBuilder;Lcom/netease/ntunisdk/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method constructor <init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/netease/ntunisdk/glide/RequestManager;Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/netease/ntunisdk/glide/RequestBuilder;Lcom/netease/ntunisdk/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/netease/ntunisdk/glide/RequestManager;",
            "Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;",
            "Landroid/os/Handler;",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/netease/ntunisdk/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    .line 88
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/netease/ntunisdk/glide/RequestManager;

    if-nez p4, :cond_0

    .line 90
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;-><init>(Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;)V

    invoke-direct {p4, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 93
    iput-object p4, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    .line 94
    iput-object p5, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    .line 96
    iput-object p3, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;

    .line 98
    invoke-virtual {p0, p6, p7}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->setFrameTransformation(Lcom/netease/ntunisdk/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static getFrameSignature()Lcom/netease/ntunisdk/glide/load/Key;
    .locals 3

    .line 361
    new-instance v0, Lcom/netease/ntunisdk/glide/signature/ObjectKey;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getRequestBuilder(Lcom/netease/ntunisdk/glide/RequestManager;II)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/RequestManager;",
            "II)",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->asBitmap()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p0

    sget-object v0, Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;

    .line 352
    invoke-static {v0}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;)Lcom/netease/ntunisdk/glide/request/RequestOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 353
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->useAnimationPool(Z)Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/request/RequestOptions;

    .line 354
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/request/RequestOptions;

    .line 355
    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->override(II)Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object p1

    .line 351
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method private loadNextFrame()V
    .locals 5

    .line 207
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->startFromFirstFrame:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;->resetFrameIndex()V

    .line 214
    iput-boolean v2, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->startFromFirstFrame:Z

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 218
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 219
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->onFrameReady(Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V

    return-void

    .line 222
    :cond_3
    iput-boolean v1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    .line 225
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;->getNextDelay()I

    move-result v0

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 228
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;->advance()V

    .line 229
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;

    invoke-interface {v4}, Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;->getCurrentFrameIndex()I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->next:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 230
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    invoke-static {}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->getFrameSignature()Lcom/netease/ntunisdk/glide/load/Key;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->signatureOf(Lcom/netease/ntunisdk/glide/load/Key;)Lcom/netease/ntunisdk/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->next:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->into(Lcom/netease/ntunisdk/glide/request/target/Target;)Lcom/netease/ntunisdk/glide/request/target/Target;

    :cond_4
    :goto_1
    return-void
.end method

.method private recycleFirstFrame()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->bitmapPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v1, v0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private start()V
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    .line 175
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->loadNextFrame()V

    return-void
.end method

.method private stop()V
    .locals 1

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->recycleFirstFrame()V

    .line 185
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->stop()V

    .line 186
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->current:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 187
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/netease/ntunisdk/glide/RequestManager;

    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/glide/RequestManager;->clear(Lcom/netease/ntunisdk/glide/request/target/Target;)V

    .line 188
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->current:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->next:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_1

    .line 191
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/netease/ntunisdk/glide/RequestManager;

    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/glide/RequestManager;->clear(Lcom/netease/ntunisdk/glide/request/target/Target;)V

    .line 192
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->next:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_2

    .line 195
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/netease/ntunisdk/glide/RequestManager;

    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/glide/RequestManager;->clear(Lcom/netease/ntunisdk/glide/request/target/Target;)V

    .line 196
    iput-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;->clear()V

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    return-void
.end method

.method getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->current:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;->getResource()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0
.end method

.method getCurrentIndex()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->current:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;->index:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method getFirstFrame()Landroid/graphics/Bitmap;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getFrameCount()I
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v0

    return v0
.end method

.method getFrameTransformation()Lcom/netease/ntunisdk/glide/load/Transformation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/ntunisdk/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->transformation:Lcom/netease/ntunisdk/glide/load/Transformation;

    return-object v0
.end method

.method getHeight()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->height:I

    return v0
.end method

.method getLoopCount()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;->getTotalIterationCount()I

    move-result v0

    return v0
.end method

.method getSize()I
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/gifdecoder/GifDecoder;->getByteSize()I

    move-result v0

    iget v1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->firstFrameSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method getWidth()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->width:I

    return v0
.end method

.method onFrameReady(Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->onEveryFrameListener:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;->onFrameReady()V

    :cond_0
    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    .line 260
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 268
    :cond_1
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-nez v0, :cond_3

    .line 269
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->startFromFirstFrame:Z

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 272
    :cond_2
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    :goto_0
    return-void

    .line 277
    :cond_3
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;->getResource()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 278
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->recycleFirstFrame()V

    .line 279
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->current:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 280
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->current:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 283
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    .line 284
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$FrameCallback;

    .line 285
    invoke-interface {v2}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$FrameCallback;->onFrameReady()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 288
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 292
    :cond_5
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->loadNextFrame()V

    return-void
.end method

.method setFrameTransformation(Lcom/netease/ntunisdk/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/load/Transformation;

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->transformation:Lcom/netease/ntunisdk/glide/load/Transformation;

    .line 103
    invoke-static {p2}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    .line 104
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    new-instance v1, Lcom/netease/ntunisdk/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/netease/ntunisdk/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->transform(Lcom/netease/ntunisdk/glide/load/Transformation;)Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    .line 106
    invoke-static {p2}, Lcom/netease/ntunisdk/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->firstFrameSize:I

    .line 107
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->width:I

    .line 108
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->height:I

    return-void
.end method

.method setNextStartFromFirstFrame()V
    .locals 3

    .line 241
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Can\'t restart a running animation"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 242
    iput-boolean v1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->startFromFirstFrame:Z

    .line 243
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/netease/ntunisdk/glide/RequestManager;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/glide/RequestManager;->clear(Lcom/netease/ntunisdk/glide/request/target/Target;)V

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    :cond_0
    return-void
.end method

.method setOnEveryFrameReadyListener(Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->onEveryFrameListener:Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;

    return-void
.end method

.method subscribe(Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$FrameCallback;)V
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    if-nez v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->start()V

    :cond_0
    return-void

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe twice in a row"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method unsubscribe(Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$FrameCallback;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 135
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;->stop()V

    :cond_0
    return-void
.end method

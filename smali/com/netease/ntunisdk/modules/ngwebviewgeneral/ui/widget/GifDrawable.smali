.class public Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GifDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private mCurrentFrame:Landroid/graphics/Bitmap;

.field private mCurrentFrameIndex:I

.field private final mDecoder:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;

.field private final mHandler:Landroid/os/Handler;

.field private mIsRunning:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mPaint:Landroid/graphics/Paint;

    .line 96
    new-instance p1, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable$1;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable$1;-><init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 39
    new-instance p1, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;

    invoke-direct {p1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mDecoder:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mHandler:Landroid/os/Handler;

    .line 41
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mDecoder:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->read(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mIsRunning:Z

    return p0
.end method

.method static synthetic access$102(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mCurrentFrame:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mCurrentFrameIndex:I

    return p0
.end method

.method static synthetic access$202(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mCurrentFrameIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;)Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mDecoder:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mCurrentFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mCurrentFrame:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mDecoder:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;

    iget v0, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mDecoder:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;

    iget v0, v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->width:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mDecoder:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->isTransparent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x3

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mIsRunning:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public start()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mDecoder:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->getFrameCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mIsRunning:Z

    .line 82
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mIsRunning:Z

    .line 88
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

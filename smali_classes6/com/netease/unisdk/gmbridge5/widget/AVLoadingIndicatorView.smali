.class public Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;
.super Landroid/view/View;
.source "AVLoadingIndicatorView.java"


# static fields
.field private static final DEFAULT_INDICATOR:Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;

.field private static final MIN_DELAY:I = 0x1f4

.field private static final MIN_SHOW_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "AVLoadingIndicatorView"


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

.field private mIndicatorColor:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mPostedHide:Z

.field private mPostedShow:Z

.field private mShouldStartAnimationDrawable:Z

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;

    invoke-direct {v0}, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;-><init>()V

    sput-object v0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->DEFAULT_INDICATOR:Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    .line 30
    iput-wide v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mStartTime:J

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedHide:Z

    .line 34
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedShow:Z

    .line 36
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDismissed:Z

    .line 38
    new-instance v0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;-><init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;-><init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    .line 72
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, -0x1

    .line 30
    iput-wide v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mStartTime:J

    const/4 p2, 0x0

    .line 32
    iput-boolean p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedHide:Z

    .line 34
    iput-boolean p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedShow:Z

    .line 36
    iput-boolean p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDismissed:Z

    .line 38
    new-instance p2, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;

    invoke-direct {p2, p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;-><init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 48
    new-instance p2, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;

    invoke-direct {p2, p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;-><init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    .line 77
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p2, -0x1

    .line 30
    iput-wide p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mStartTime:J

    const/4 p2, 0x0

    .line 32
    iput-boolean p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedHide:Z

    .line 34
    iput-boolean p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedShow:Z

    .line 36
    iput-boolean p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDismissed:Z

    .line 38
    new-instance p2, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;

    invoke-direct {p2, p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;-><init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 48
    new-instance p2, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;

    invoke-direct {p2, p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;-><init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    .line 82
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 p2, -0x1

    .line 30
    iput-wide p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mStartTime:J

    const/4 p2, 0x0

    .line 32
    iput-boolean p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedHide:Z

    .line 34
    iput-boolean p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedShow:Z

    .line 36
    iput-boolean p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDismissed:Z

    .line 38
    new-instance p2, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;

    invoke-direct {p2, p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;-><init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 48
    new-instance p2, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;

    invoke-direct {p2, p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;-><init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    .line 88
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedHide:Z

    return p1
.end method

.method static synthetic access$102(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;J)J
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedShow:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDismissed:Z

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AVLoadingIndicatorView"

    const-string v1, "init..."

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netease/unisdk/gmbridgelib/R$dimen;->uni_gm_avloading_wh:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMinWidth:I

    .line 94
    iget p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMinWidth:I

    iput p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMaxWidth:I

    .line 95
    iput p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMinHeight:I

    .line 96
    iput p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMaxHeight:I

    const/4 p1, -0x1

    .line 97
    iput p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicatorColor:I

    const-string p1, "BallPulseIndicator"

    .line 98
    invoke-virtual {p0, p1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setIndicator(Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    if-nez p1, :cond_0

    .line 100
    sget-object p1, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->DEFAULT_INDICATOR:Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;

    invoke-virtual {p0, p1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setIndicator(Lcom/netease/unisdk/gmbridge5/widget/Indicator;)V

    :cond_0
    return-void
.end method

.method private removeCallbacks()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 409
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateDrawableBounds(II)V
    .locals 6

    .line 290
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 291
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 298
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->getIntrinsicWidth()I

    move-result v0

    .line 302
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    invoke-virtual {v1}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->getIntrinsicHeight()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    int-to-float v2, p2

    div-float v3, v1, v2

    const/4 v4, 0x0

    cmpl-float v5, v0, v3

    if-eqz v5, :cond_1

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    mul-float v2, v2, v0

    float-to-int v0, v2

    sub-int/2addr p1, v0

    .line 309
    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    move v4, p1

    move p1, v0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    mul-float v1, v1, v2

    float-to-int v0, v1

    sub-int/2addr p2, v0

    .line 314
    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p2

    const/4 p2, 0x0

    .line 318
    :goto_1
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    invoke-virtual {v1, v4, p2, p1, v0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->setBounds(IIII)V

    :cond_2
    return-void
.end method

.method private updateDrawableState()V
    .locals 2

    .line 375
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getDrawableState()[I

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    invoke-virtual {v1, v0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->setState([I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 335
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 337
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 338
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 340
    iget-boolean p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    if-eqz p1, :cond_0

    instance-of p1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_0

    .line 341
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    const/4 p1, 0x0

    .line 342
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    :cond_0
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 384
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 386
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0, p1, p2}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 370
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 371
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->updateDrawableState()V

    return-void
.end method

.method public getIndicator()Lcom/netease/unisdk/gmbridge5/widget/Indicator;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    return-object v0
.end method

.method public hide()V
    .locals 10

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDismissed:Z

    .line 192
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v5, 0x1f4

    cmp-long v7, v1, v5

    if-gez v7, :cond_1

    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-nez v9, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-boolean v3, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedHide:Z

    if-nez v3, :cond_2

    .line 204
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    sub-long/2addr v5, v1

    invoke-virtual {p0, v3, v5, v6}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedHide:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 198
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 270
    invoke-virtual {p0, p1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 272
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 273
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 275
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->invalidate(IIII)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 393
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 394
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->startAnimation()V

    .line 395
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->removeCallbacks()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 400
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->stopAnimation()V

    .line 403
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 404
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->removeCallbacks()V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    .line 324
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 325
    invoke-virtual {p0, p1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 5

    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 354
    iget v2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMinWidth:I

    iget v3, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 355
    iget v3, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMinHeight:I

    iget v4, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 358
    :goto_0
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->updateDrawableState()V

    .line 360
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 361
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 363
    invoke-static {v2, p1, v1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->resolveSizeAndState(III)I

    move-result p1

    .line 364
    invoke-static {v0, p2, v1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->resolveSizeAndState(III)I

    move-result p2

    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->updateDrawableBounds(II)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 260
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    const/16 p1, 0x8

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->startAnimation()V

    goto :goto_1

    .line 262
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->stopAnimation()V

    :goto_1
    return-void
.end method

.method public setIndicator(Lcom/netease/unisdk/gmbridge5/widget/Indicator;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 111
    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 112
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    .line 117
    iget v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicatorColor:I

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setIndicatorColor(I)V

    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p1, p0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->postInvalidate()V

    :cond_2
    return-void
.end method

.method public setIndicator(Ljava/lang/String;)V
    .locals 3

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    .line 159
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".indicators"

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawableClassName: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AVLoadingIndicatorView"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    .line 170
    invoke-virtual {p0, p1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setIndicator(Lcom/netease/unisdk/gmbridge5/widget/Indicator;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 176
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    const-string p1, "Didn\'t find your class , check the name again !"

    .line 172
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    .line 140
    iput p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicatorColor:I

    .line 141
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->setColor(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 249
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->startAnimation()V

    goto :goto_1

    .line 251
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->stopAnimation()V

    :cond_2
    :goto_1
    return-void
.end method

.method public show()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 212
    iput-wide v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mStartTime:J

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDismissed:Z

    .line 214
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 215
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedShow:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedShow:Z

    :cond_0
    return-void
.end method

.method public smoothToHide()V
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x8

    .line 187
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setVisibility(I)V

    return-void
.end method

.method public smoothToShow()V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setVisibility(I)V

    return-void
.end method

.method startAnimation()V
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->postInvalidate()V

    return-void
.end method

.method stopAnimation()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->stop()V

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->postInvalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    if-eq p1, v0, :cond_1

    .line 224
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.class public Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;
.super Landroid/view/ViewGroup;
.source "TweetMediaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;,
        Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;,
        Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$PicassoCallback;
    }
.end annotation


# static fields
.field static final MAX_IMAGE_VIEW_COUNT:I = 0x4

.field static final SIZED_IMAGE_SMALL:Ljava/lang/String; = ":small"


# instance fields
.field final dependencyProvider:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;

.field private imageCount:I

.field private final imageViews:[Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

.field internalRoundedCornersEnabled:Z

.field mediaBgColor:I

.field private final mediaDividerSize:I

.field private mediaEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/MediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field photoErrorResId:I

.field final radii:[F

.field private final rect:Landroid/graphics/RectF;

.field tweet:Lcom/twitter/sdk/android/core/models/Tweet;

.field tweetMediaClickListener:Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 76
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    .line 57
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageViews:[Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    .line 59
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->path:Landroid/graphics/Path;

    .line 60
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->rect:Landroid/graphics/RectF;

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 63
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->radii:[F

    const/high16 p1, -0x1000000

    .line 64
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaBgColor:I

    .line 82
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->dependencyProvider:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;

    .line 83
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/twitter/sdk/android/tweetui/R$dimen;->tw__media_view_divider_size:I

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    .line 85
    sget p1, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__ic_tweet_photo_error_dark:I

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->photoErrorResId:I

    return-void
.end method


# virtual methods
.method clearImageViews()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 330
    :goto_0
    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    if-ge v1, v2, :cond_1

    .line 331
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageViews:[Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    .line 333
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_1
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 143
    iget-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->internalRoundedCornersEnabled:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 147
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 148
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method getOrCreateImageView(I)Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;
    .locals 9

    .line 364
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageViews:[Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;-><init>(Landroid/content/Context;)V

    .line 367
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    invoke-virtual {v0, p0}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageViews:[Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    aput-object v0, v2, p1

    .line 370
    invoke-virtual {p0, v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {p0, p1, v1, v1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v4, p1

    .line 373
    invoke-virtual/range {v3 .. v8}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    .line 376
    :goto_0
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;->setVisibility(I)V

    .line 377
    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaBgColor:I

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;->setBackgroundColor(I)V

    .line 378
    sget v1, Lcom/twitter/sdk/android/tweetui/R$id;->tw__entity_index:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;->setTag(ILjava/lang/Object;)V

    return-object v0
.end method

.method getSizedImagePath(Lcom/twitter/sdk/android/core/models/MediaEntity;)Ljava/lang/String;
    .locals 2

    .line 385
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->mediaUrlHttps:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":small"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 388
    :cond_0
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->mediaUrlHttps:Ljava/lang/String;

    return-object p1
.end method

.method initializeImageViews(Lcom/twitter/sdk/android/core/models/Card;)V
    .locals 3

    const/4 v0, 0x1

    .line 353
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    const/4 v1, 0x0

    .line 355
    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getOrCreateImageView(I)Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    move-result-object v1

    .line 357
    invoke-static {p1}, Lcom/twitter/sdk/android/core/internal/VineCardUtils;->getImageValue(Lcom/twitter/sdk/android/core/models/Card;)Lcom/twitter/sdk/android/core/models/ImageValue;

    move-result-object p1

    .line 358
    iget-object v2, p1, Lcom/twitter/sdk/android/core/models/ImageValue;->alt:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setAltText(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 359
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/ImageValue;->url:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setMediaImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setOverlayImage(Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;Z)V

    return-void
.end method

.method initializeImageViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/MediaEntity;",
            ">;)V"
        }
    .end annotation

    .line 340
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    const/4 v0, 0x0

    .line 342
    :goto_0
    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    if-ge v0, v1, :cond_0

    .line 343
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getOrCreateImageView(I)Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    move-result-object v1

    .line 345
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 346
    iget-object v3, v2, Lcom/twitter/sdk/android/core/models/MediaEntity;->altText:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setAltText(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getSizedImagePath(Lcom/twitter/sdk/android/core/models/MediaEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setMediaImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 348
    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->isVideoType(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setOverlayImage(Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public launchPhotoGallery(I)V
    .locals 5

    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/twitter/sdk/android/tweetui/GalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    new-instance v1, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-wide v2, v2, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;-><init>(JILjava/util/List;)V

    const-string p1, "GALLERY_ITEM"

    .line 212
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/twitter/sdk/android/core/IntentUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public launchVideoPlayer(Lcom/twitter/sdk/android/core/models/MediaEntity;)V
    .locals 9

    .line 179
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->getSupportedVariant(Lcom/twitter/sdk/android/core/models/MediaEntity;)Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/twitter/sdk/android/tweetui/PlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->isLooping(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v5

    .line 183
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->showVideoControls(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v6

    .line 184
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->getSupportedVariant(Lcom/twitter/sdk/android/core/models/MediaEntity;)Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;

    move-result-object p1

    iget-object v4, p1, Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;->url:Ljava/lang/String;

    .line 185
    new-instance p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;-><init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "PLAYER_ITEM"

    .line 187
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/twitter/sdk/android/core/IntentUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public launchVideoPlayer(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 10

    .line 194
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->card:Lcom/twitter/sdk/android/core/models/Card;

    .line 195
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/twitter/sdk/android/tweetui/PlayerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/VineCardUtils;->getStreamUrl(Lcom/twitter/sdk/android/core/models/Card;)Ljava/lang/String;

    move-result-object v5

    .line 198
    new-instance v2, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;-><init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    const-string v3, "PLAYER_ITEM"

    .line 200
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 202
    iget-wide v2, p1, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    invoke-static {v2, v3, v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->fromTweetCard(JLcom/twitter/sdk/android/core/models/Card;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object p1

    const-string v0, "SCRIBE_ITEM"

    .line 203
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/twitter/sdk/android/core/IntentUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method layoutImage(IIIII)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageViews:[Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    aget-object p1, v0, p1

    .line 321
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    if-ne v0, p3, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    if-ne v0, p4, :cond_0

    .line 322
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    if-ne v0, p5, :cond_0

    return-void

    .line 326
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method layoutImages()V
    .locals 11

    .line 290
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getMeasuredWidth()I

    move-result v6

    .line 291
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getMeasuredHeight()I

    move-result v7

    .line 292
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    sub-int v1, v6, v0

    const/4 v2, 0x2

    div-int/lit8 v8, v1, 0x2

    sub-int v1, v7, v0

    .line 293
    div-int/lit8 v9, v1, 0x2

    add-int v10, v8, v0

    .line 295
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v8

    move v5, v9

    .line 309
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    const/4 v1, 0x2

    .line 310
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    add-int v3, v9, v0

    move-object v0, p0

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    move v2, v10

    move v4, v6

    move v5, v9

    .line 311
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    const/4 v1, 0x3

    .line 312
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    add-int v3, v9, v0

    move-object v0, p0

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v8

    move v5, v7

    .line 304
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    const/4 v1, 0x1

    move v2, v10

    move v4, v6

    move v5, v9

    .line 305
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    const/4 v1, 0x2

    .line 306
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    add-int v3, v9, v0

    move-object v0, p0

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v8

    move v5, v7

    .line 300
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    const/4 v1, 0x1

    .line 301
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    add-int v2, v8, v0

    move-object v0, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v6

    move v5, v7

    .line 297
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    :goto_0
    return-void
.end method

.method measureImageView(III)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageViews:[Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    aget-object p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    .line 285
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 286
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 284
    invoke-virtual {p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;->measure(II)V

    return-void
.end method

.method measureImages(II)Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;
    .locals 8

    .line 254
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 255
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 256
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    sub-int v1, p1, v0

    const/4 v2, 0x2

    div-int/2addr v1, v2

    sub-int v0, p2, v0

    .line 257
    div-int/2addr v0, v2

    .line 258
    iget v3, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    if-eq v3, v2, :cond_2

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    const/4 v7, 0x4

    if-eq v3, v7, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0, v4, v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    .line 273
    invoke-virtual {p0, v5, v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    .line 274
    invoke-virtual {p0, v2, v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    .line 275
    invoke-virtual {p0, v6, v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p0, v4, v1, p2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    .line 268
    invoke-virtual {p0, v5, v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    .line 269
    invoke-virtual {p0, v2, v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {p0, v4, v1, p2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    .line 264
    invoke-virtual {p0, v5, v1, p2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    goto :goto_0

    .line 260
    :cond_3
    invoke-virtual {p0, v4, p1, p2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    .line 280
    :goto_0
    invoke-static {p1, p2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;->fromSize(II)Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 156
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__entity_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 157
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->tweetMediaClickListener:Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/models/MediaEntity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->tweetMediaClickListener:Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-interface {v0, v1, p1}, Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;->onMediaEntityClick(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/core/models/MediaEntity;)V

    goto :goto_1

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 168
    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->isVideoType(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->launchVideoPlayer(Lcom/twitter/sdk/android/core/models/MediaEntity;)V

    goto :goto_1

    .line 170
    :cond_2
    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->isPhotoType(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->launchPhotoGallery(I)V

    goto :goto_1

    .line 174
    :cond_3
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->launchVideoPlayer(Lcom/twitter/sdk/android/core/models/Tweet;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 115
    iget p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    if-lez p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImages()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 123
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    if-lez v0, :cond_0

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImages(II)Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;

    move-result-object p1

    goto :goto_0

    .line 126
    :cond_0
    sget-object p1, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;->EMPTY:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;

    .line 128
    :goto_0
    iget p2, p1, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;->width:I

    iget p1, p1, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;->height:I

    invoke-virtual {p0, p2, p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 135
    iget-object p3, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->path:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 136
    iget-object p3, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->rect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->path:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->rect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->radii:[F

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 138
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method setAltText(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 392
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/twitter/sdk/android/tweetui/R$string;->tw__tweet_media:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setMediaBgColor(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaBgColor:I

    return-void
.end method

.method setMediaImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->dependencyProvider:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;->getImageLoader()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-virtual {v0, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    .line 413
    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    .line 414
    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->photoErrorResId:I

    .line 415
    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$PicassoCallback;

    invoke-direct {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$PicassoCallback;-><init>(Landroid/widget/ImageView;)V

    .line 416
    invoke-virtual {p2, p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    return-void
.end method

.method setOverlayImage(Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__player_overlay:I

    .line 402
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 401
    invoke-virtual {p1, p2}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;->setOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 404
    invoke-virtual {p1, p2}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;->setOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setPhotoErrorResId(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->photoErrorResId:I

    return-void
.end method

.method public setRoundedCornersRadii(IIII)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->radii:[F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    .line 90
    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x2

    .line 91
    aput p1, v0, p2

    const/4 p2, 0x3

    .line 92
    aput p1, v0, p2

    int-to-float p1, p3

    const/4 p2, 0x4

    .line 93
    aput p1, v0, p2

    const/4 p2, 0x5

    .line 94
    aput p1, v0, p2

    int-to-float p1, p4

    const/4 p2, 0x6

    .line 95
    aput p1, v0, p2

    const/4 p2, 0x7

    .line 96
    aput p1, v0, p2

    .line 98
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->requestLayout()V

    return-void
.end method

.method public setTweetMediaClickListener(Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->tweetMediaClickListener:Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;

    return-void
.end method

.method public setTweetMediaEntities(Lcom/twitter/sdk/android/core/models/Tweet;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/MediaEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 217
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    .line 218
    invoke-interface {p2, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 223
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    .line 225
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->clearImageViews()V

    .line 226
    invoke-virtual {p0, p2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->initializeImageViews(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 228
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/twitter/sdk/android/core/models/MediaEntity;

    invoke-static {p2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->isPhotoType(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->internalRoundedCornersEnabled:Z

    goto :goto_0

    .line 231
    :cond_1
    iput-boolean p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->internalRoundedCornersEnabled:Z

    .line 234
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->requestLayout()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setVineCard(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 238
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->card:Lcom/twitter/sdk/android/core/models/Card;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->card:Lcom/twitter/sdk/android/core/models/Card;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/VineCardUtils;->isVine(Lcom/twitter/sdk/android/core/models/Card;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    .line 245
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->clearImageViews()V

    .line 246
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/Tweet;->card:Lcom/twitter/sdk/android/core/models/Card;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->initializeImageViews(Lcom/twitter/sdk/android/core/models/Card;)V

    const/4 p1, 0x0

    .line 248
    iput-boolean p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->internalRoundedCornersEnabled:Z

    .line 250
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.class Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$CenterInside;
.super Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CenterInside"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getSampleSizeRounding(IIII)Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .locals 2

    .line 276
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$CenterInside;->getScaleFactor(IIII)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 277
    sget-object p1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->QUALITY:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    goto :goto_0

    .line 278
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$CenterInside;->FIT_CENTER:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->getSampleSizeRounding(IIII)Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getScaleFactor(IIII)F
    .locals 1

    .line 268
    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$CenterInside;->FIT_CENTER:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

    .line 270
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 268
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

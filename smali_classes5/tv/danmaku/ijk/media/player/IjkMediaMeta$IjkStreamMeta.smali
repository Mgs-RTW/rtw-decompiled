.class public Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;
.super Ljava/lang/Object;
.source "IjkMediaMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/IjkMediaMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IjkStreamMeta"
.end annotation


# instance fields
.field public mBitrate:J

.field public mChannelLayout:J

.field public mCodecLongName:Ljava/lang/String;

.field public mCodecName:Ljava/lang/String;

.field public mCodecProfile:Ljava/lang/String;

.field public mFpsDen:I

.field public mFpsNum:I

.field public mHeight:I

.field public mIndex:I

.field public mMeta:Landroid/os/Bundle;

.field public mSampleRate:I

.field public mSarDen:I

.field public mSarNum:I

.field public mTbrDen:I

.field public mTbrNum:I

.field public mType:Ljava/lang/String;

.field public mWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mIndex:I

    return-void
.end method


# virtual methods
.method public getBitrateInline()Ljava/lang/String;
    .locals 8

    .line 334
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mBitrate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-string v0, "N/A"

    return-object v0

    .line 336
    :cond_0
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mBitrate:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    .line 337
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d bit/s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mBitrate:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 339
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d kb/s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v6, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mBitrate:J

    div-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelLayoutInline()Ljava/lang/String;
    .locals 6

    .line 352
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mChannelLayout:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-string v0, "N/A"

    return-object v0

    .line 355
    :cond_0
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mChannelLayout:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-string v0, "mono"

    return-object v0

    .line 357
    :cond_1
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mChannelLayout:J

    const-wide/16 v2, 0x3

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const-string v0, "stereo"

    return-object v0

    .line 360
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mChannelLayout:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodecLongNameInline()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mCodecLongName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mCodecLongName:Ljava/lang/String;

    return-object v0

    .line 307
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mCodecName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mCodecName:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "N/A"

    return-object v0
.end method

.method public getFpsInline()Ljava/lang/String;
    .locals 2

    .line 326
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mFpsNum:I

    if-lez v0, :cond_1

    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mFpsDen:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mFpsNum:I

    int-to-float v0, v0

    iget v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mFpsDen:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "N/A"

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, p1, v0}, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 277
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 282
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 289
    invoke-virtual {p0, p1, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .line 293
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p2

    .line 298
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide p2
.end method

.method public getResolutionInline()Ljava/lang/String;
    .locals 7

    .line 315
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mHeight:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 317
    :cond_0
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mSarNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lez v0, :cond_2

    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mSarDen:I

    if-gtz v0, :cond_1

    goto :goto_0

    .line 320
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d x %d [SAR %d:%d]"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 321
    iget v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    iget v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mSarNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    const/4 v1, 0x3

    iget v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mSarDen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    .line 320
    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 318
    :cond_2
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d x %d"

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    iget v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const-string v0, "N/A"

    return-object v0
.end method

.method public getSampleRateInline()Ljava/lang/String;
    .locals 5

    .line 344
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mSampleRate:I

    if-gtz v0, :cond_0

    const-string v0, "N/A"

    return-object v0

    .line 347
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d Hz"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mSampleRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mMeta:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

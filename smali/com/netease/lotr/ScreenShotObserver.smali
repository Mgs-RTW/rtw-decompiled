.class public Lcom/netease/lotr/ScreenShotObserver;
.super Ljava/lang/Object;
.source "ScreenShotObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;
    }
.end annotation


# static fields
.field private static final KEYWORDS_CN:[Ljava/lang/String;

.field private static final KEYWORDS_EN:[Ljava/lang/String;

.field private static final MEDIA_PROJECTIONS:[Ljava/lang/String;

.field private static final MEDIA_PROJECTIONS_API_16:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ScreebShotObserver"


# instance fields
.field private bIsListenering:Z

.field private mContext:Landroid/content/Context;

.field private mExternalObserver:Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;

.field private mInternalObserver:Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;

.field private mLastScreenShotEventTime:J

.field private final mUIHandler:Landroid/os/Handler;

.field private m_listener:Lcom/netease/lotr/IScreenShotListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    .line 32
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_data"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "datetaken"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/netease/lotr/ScreenShotObserver;->MEDIA_PROJECTIONS:[Ljava/lang/String;

    const/4 v1, 0x4

    .line 37
    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "_data"

    aput-object v5, v2, v3

    const-string v5, "datetaken"

    aput-object v5, v2, v4

    const-string v5, "width"

    aput-object v5, v2, v0

    const-string v5, "height"

    const/4 v6, 0x3

    aput-object v5, v2, v6

    sput-object v2, Lcom/netease/lotr/ScreenShotObserver;->MEDIA_PROJECTIONS_API_16:[Ljava/lang/String;

    const/16 v2, 0xc

    .line 45
    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "screenshot"

    aput-object v5, v2, v3

    const-string v5, "screen_shot"

    aput-object v5, v2, v4

    const-string v5, "screen-shot"

    aput-object v5, v2, v0

    const-string v0, "screen shot"

    aput-object v0, v2, v6

    const-string v0, "screencapture"

    aput-object v0, v2, v1

    const-string v0, "screen_capture"

    const/4 v1, 0x5

    aput-object v0, v2, v1

    const-string v0, "screen-capture"

    const/4 v1, 0x6

    aput-object v0, v2, v1

    const-string v0, "screen capture"

    const/4 v1, 0x7

    aput-object v0, v2, v1

    const-string v0, "screencap"

    const/16 v1, 0x8

    aput-object v0, v2, v1

    const-string v0, "screen_cap"

    const/16 v1, 0x9

    aput-object v0, v2, v1

    const-string v0, "screen-cap"

    const/16 v1, 0xa

    aput-object v0, v2, v1

    const-string v0, "screen cap"

    const/16 v1, 0xb

    aput-object v0, v2, v1

    sput-object v2, Lcom/netease/lotr/ScreenShotObserver;->KEYWORDS_EN:[Ljava/lang/String;

    .line 51
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u622a\u5c4f"

    aput-object v1, v0, v3

    sput-object v0, Lcom/netease/lotr/ScreenShotObserver;->KEYWORDS_CN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netease/lotr/IScreenShotListener;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/netease/lotr/ScreenShotObserver;->bIsListenering:Z

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/lotr/ScreenShotObserver;->mUIHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 76
    iput-object p1, p0, Lcom/netease/lotr/ScreenShotObserver;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/netease/lotr/ScreenShotObserver;->m_listener:Lcom/netease/lotr/IScreenShotListener;

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The context must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/netease/lotr/ScreenShotObserver;)Lcom/netease/lotr/IScreenShotListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/netease/lotr/ScreenShotObserver;->m_listener:Lcom/netease/lotr/IScreenShotListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/lotr/ScreenShotObserver;Landroid/net/Uri;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/netease/lotr/ScreenShotObserver;->handleMediaContentChange(Landroid/net/Uri;)V

    return-void
.end method

.method private static assertInMainThread()V
    .locals 4

    .line 249
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 250
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 252
    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    const/4 v1, 0x3

    .line 253
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call the method must be in main thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkScreenShot(Ljava/lang/String;JII)Z
    .locals 2

    .line 219
    iget-wide p4, p0, Lcom/netease/lotr/ScreenShotObserver;->mLastScreenShotEventTime:J

    const/4 v0, 0x0

    cmp-long v1, p2, p4

    if-gez v1, :cond_0

    return v0

    .line 224
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 229
    :cond_1
    sget-object p2, Lcom/netease/lotr/ScreenShotObserver;->KEYWORDS_CN:[Ljava/lang/String;

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    const/4 p5, 0x1

    if-ge p4, p3, :cond_3

    aget-object v1, p2, p4

    .line 230
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "ScreebShotObserver"

    const-string p2, "screen shot with KEYWORD_CN"

    .line 231
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p5

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 235
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 236
    sget-object p2, Lcom/netease/lotr/ScreenShotObserver;->KEYWORDS_EN:[Ljava/lang/String;

    array-length p3, p2

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p3, :cond_5

    aget-object v1, p2, p4

    .line 237
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "ScreebShotObserver"

    const-string p2, "screen shot with KEYWORD_EN"

    .line 238
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p5

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method private handleMediaContentChange(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method private handleMediaRowData(Ljava/lang/String;JII)V
    .locals 3

    .line 208
    invoke-direct/range {p0 .. p5}, Lcom/netease/lotr/ScreenShotObserver;->checkScreenShot(Ljava/lang/String;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreebShotObserver"

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScreenShot: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " * "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; date = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0, p4, p5}, Lcom/netease/lotr/ScreenShotObserver;->onScreenShot(II)V

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/netease/lotr/ScreenShotObserver;->mLastScreenShotEventTime:J

    goto :goto_0

    :cond_0
    const-string v0, "ScreebShotObserver"

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media content changed, but not screenshot: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " * "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; date = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onScreenShot(II)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/netease/lotr/ScreenShotObserver;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 265
    new-instance v1, Lcom/netease/lotr/ScreenShotObserver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/lotr/ScreenShotObserver$1;-><init>(Lcom/netease/lotr/ScreenShotObserver;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startListen()V
    .locals 4

    .line 84
    iget-boolean v0, p0, Lcom/netease/lotr/ScreenShotObserver;->bIsListenering:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/netease/lotr/ScreenShotObserver;->bIsListenering:Z

    .line 89
    invoke-static {}, Lcom/netease/lotr/ScreenShotObserver;->assertInMainThread()V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/lotr/ScreenShotObserver;->mLastScreenShotEventTime:J

    .line 94
    new-instance v0, Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/netease/lotr/ScreenShotObserver;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;-><init>(Lcom/netease/lotr/ScreenShotObserver;Landroid/net/Uri;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netease/lotr/ScreenShotObserver;->mInternalObserver:Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;

    .line 95
    new-instance v0, Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/netease/lotr/ScreenShotObserver;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;-><init>(Lcom/netease/lotr/ScreenShotObserver;Landroid/net/Uri;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netease/lotr/ScreenShotObserver;->mExternalObserver:Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;

    .line 98
    iget-object v0, p0, Lcom/netease/lotr/ScreenShotObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/netease/lotr/ScreenShotObserver;->mInternalObserver:Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    iget-object v0, p0, Lcom/netease/lotr/ScreenShotObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/netease/lotr/ScreenShotObserver;->mExternalObserver:Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "ScreebShotObserver"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen shot listener start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopListen()V
    .locals 3

    .line 108
    iget-boolean v0, p0, Lcom/netease/lotr/ScreenShotObserver;->bIsListenering:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/netease/lotr/ScreenShotObserver;->bIsListenering:Z

    .line 113
    invoke-static {}, Lcom/netease/lotr/ScreenShotObserver;->assertInMainThread()V

    .line 116
    iget-object v0, p0, Lcom/netease/lotr/ScreenShotObserver;->mInternalObserver:Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/netease/lotr/ScreenShotObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/lotr/ScreenShotObserver;->mInternalObserver:Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    :goto_0
    iput-object v1, p0, Lcom/netease/lotr/ScreenShotObserver;->mInternalObserver:Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/netease/lotr/ScreenShotObserver;->mExternalObserver:Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;

    if-eqz v0, :cond_2

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/netease/lotr/ScreenShotObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/lotr/ScreenShotObserver;->mExternalObserver:Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    :goto_1
    iput-object v1, p0, Lcom/netease/lotr/ScreenShotObserver;->mExternalObserver:Lcom/netease/lotr/ScreenShotObserver$MediaContentObserver;

    :cond_2
    const-wide/16 v0, 0x0

    .line 134
    iput-wide v0, p0, Lcom/netease/lotr/ScreenShotObserver;->mLastScreenShotEventTime:J

    return-void
.end method

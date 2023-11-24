.class public final Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniQR decode"


# instance fields
.field private final activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private running:Z


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->running:Z

    .line 51
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 52
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 53
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    return-void
.end method

.method private static bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V
    .locals 7

    .line 179
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->renderThumbnail()[I

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailWidth()I

    move-result v6

    .line 181
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailHeight()I

    move-result v4

    .line 182
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    move v2, v6

    move v3, v6

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 184
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 185
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "barcode_bitmap"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    int-to-float v0, v6

    .line 186
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const-string p0, "barcode_scaled_factor"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method private decode([BII)V
    .locals 9

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 88
    iget-object v2, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getCameraManager()Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 92
    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v3, p2, :cond_6

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v3, v2

    if-le v3, p3, :cond_1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p2, p3, :cond_4

    .line 101
    array-length v4, p1

    new-array v4, v4, [B

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p2, :cond_3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, p3, :cond_2

    mul-int v7, v6, p2

    add-int/2addr v7, p2

    sub-int/2addr v7, v5

    sub-int/2addr v7, v3

    mul-int v8, v5, p3

    add-int/2addr v8, v6

    .line 104
    aget-byte v8, p1, v8

    aput-byte v8, v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    move-object v4, p1

    .line 110
    :goto_2
    iget-object v3, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getCameraManager()Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3, v4, p2, p3}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v3

    .line 111
    iget-object v4, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-static {v4, v3}, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->decodeResultWithSource(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/PlanarYUVLuminanceSource;)Lcom/google/zxing/Result;

    move-result-object v4

    if-eqz v2, :cond_5

    if-nez v4, :cond_5

    .line 116
    iget-object v2, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getCameraManager()Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v3

    .line 117
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-static {p1, v3}, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->decodeResultWithSource(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/PlanarYUVLuminanceSource;)Lcom/google/zxing/Result;

    move-result-object v4

    .line 120
    :cond_5
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 122
    invoke-direct {p0, v0, v1, v4, v3}, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->sendDecodeResult(JLcom/google/zxing/Result;Lcom/google/zxing/PlanarYUVLuminanceSource;)V

    return-void

    :cond_6
    :goto_3
    const-string p1, "UniQR decode"

    const-string p2, "decode (rect.left + rect.width() > width) || (rect.top + rect.height() > height)"

    .line 93
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static decodeResultWithSource(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/PlanarYUVLuminanceSource;)Lcom/google/zxing/Result;
    .locals 3

    if-eqz p1, :cond_1

    .line 129
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v1, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 130
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->getRawResult(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-virtual {p1}, Lcom/google/zxing/PlanarYUVLuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 135
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->getRawResult(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_2

    .line 140
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v1, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 141
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->getRawResult(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getRawResult(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 0

    .line 151
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ntunisdk_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private sendDecodeResult(JLcom/google/zxing/Result;Lcom/google/zxing/PlanarYUVLuminanceSource;)V
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v1, "id"

    if-eqz p3, :cond_0

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found barcode in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, p1

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UniQR decode"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string p1, "decode_succeeded"

    .line 164
    invoke-direct {p0, p1, v1}, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 165
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 166
    invoke-static {p4, p2}, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 168
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "decode_failed"

    .line 172
    invoke-direct {p0, p1, v1}, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 62
    iget-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "id"

    const-string v2, "decode"

    invoke-direct {p0, v2, v1}, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 67
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->decode([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 71
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "quit"

    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/netease/ntunisdk/zxing/client/android/DecodeHandler;->running:Z

    .line 73
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_2
    :goto_0
    return-void
.end method

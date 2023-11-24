.class public Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;
    }
.end annotation


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field public static final INTENT_EXTRA_KEY_QR_ALBUM:Ljava/lang/String; = "qr_album_result"

.field public static final INTENT_EXTRA_KEY_QR_SCAN:Ljava/lang/String; = "qr_scan_result"

.field public static final INTENT_EXTRA_NO_PERMISSION:Ljava/lang/String; = "no_permission"

.field private static final PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE:I = 0x7996

.field private static final REQUEST_CODE_START_PICK_IMAGE:I = 0x68

.field public static final RESULT_CODE_QR_ALBUM:I = 0xa2

.field public static final RESULT_CODE_QR_SCAN:I = 0xa1

.field private static final TAG:Ljava/lang/String; = "UniQR act"

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private back:Landroid/widget/ImageView;

.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private decodeHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation
.end field

.field private doChangeCameraOrientation:Z

.field private flashOpened:Z

.field private handler:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;

.field private hasSurface:Z

.field private headHeight:I

.field private inactivityTimer:Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;

.field private isPortrait:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private openAlbumIv:Landroid/widget/ImageView;

.field private openFlashIv:Landroid/widget/ImageView;

.field private orientationDetector:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;

.field private playBeep:Z

.field private scrOrientation:I

.field private surfaceView:Landroid/view/SurfaceView;

.field private vibrate:Z

.field private viewfinderView:Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->scrOrientation:I

    const/4 v1, 0x1

    .line 98
    iput-boolean v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->doChangeCameraOrientation:Z

    .line 103
    new-instance v1, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$1;-><init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 109
    iput-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->isPortrait:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->headHeight:I

    return p0
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->headHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->showImagePopupWindow(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->openAlbumIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->retQrScanResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->doChangeCameraOrientation:Z

    return p0
.end method

.method private calculateBtnsLayout()V
    .locals 9

    .line 411
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FramingRect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniQR act"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 416
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScreenResolution : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "btns_layout"

    const-string v4, "id"

    .line 418
    invoke-static {p0, v3, v4}, Lcom/netease/ntunisdk/zxing/utils/Util;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 419
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 420
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 421
    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 422
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "btnsLayoutWidth : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "btnsLayoutHeight : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->isPortrait()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    .line 427
    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v7

    sub-int/2addr v1, v5

    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getHeadHeight()I

    move-result v5

    sub-int/2addr v1, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    sub-int/2addr v1, v6

    if-lez v1, :cond_3

    const/16 v0, 0x190

    if-le v1, v0, :cond_2

    add-int/lit16 v1, v1, -0xc8

    goto :goto_0

    .line 429
    :cond_2
    div-int/lit8 v1, v1, 0x2

    :goto_0
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 431
    :cond_3
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 433
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "params.bottomMargin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 437
    :cond_4
    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    sub-int/2addr v1, v6

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    sub-int/2addr v1, v5

    if-lez v1, :cond_6

    const/16 v0, 0xa0

    if-le v1, v0, :cond_5

    add-int/lit8 v1, v1, -0x50

    goto :goto_2

    .line 439
    :cond_5
    div-int/lit8 v1, v1, 0x2

    :goto_2
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    .line 441
    :cond_6
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 443
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "params.rightMargin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private checkShowLatestImage()V
    .locals 3

    .line 257
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ENABLE_POPUP_QR_PIC"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v0, "UniQR act"

    const-string v1, "enableImagePopup FALSE"

    .line 259
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x5

    .line 263
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/imageutil/ImageUtil;->getRecentImagePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 265
    new-instance v1, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$4;-><init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/zxing/utils/Util;->scanningImage(Ljava/lang/String;Lcom/netease/ntunisdk/zxing/utils/Util$ScanImageCallback;)V

    :cond_2
    return-void
.end method

.method private fixPreView(Landroid/view/SurfaceHolder;)V
    .locals 6

    const-string v0, "UniQR act"

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 386
    iget-object v2, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 387
    iget-object v3, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v3

    .line 388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cameraPoint: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", screenPoint: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 390
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->equals(II)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v3, Landroid/graphics/Point;->y:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->equals(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 391
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->isPortrait()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 393
    iget v5, v3, Landroid/graphics/Point;->x:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 394
    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 396
    :cond_0
    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 397
    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    iget v4, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 398
    iget v2, v3, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 400
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "holder size, width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-interface {p1, v2, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fixPreView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private initBeepSound()V
    .locals 7

    .line 495
    iget-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 498
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->setVolumeControlStream(I)V

    .line 499
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 500
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 501
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 504
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ntunisdk_beep"

    const-string v2, "raw"

    invoke-static {p0, v1, v2}, Lcom/netease/ntunisdk/zxing/utils/Util;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 506
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 507
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 508
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 510
    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 10

    const-string v0, "UniQR act"

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 333
    iget-object v2, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->headHeight:I

    add-int/2addr v2, v3

    .line 334
    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/ntunisdk/zxing/utils/Util;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initCamera displayView: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", screenSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int v4, v1, v2

    int-to-double v4, v4

    const-wide v6, 0x3feb333333333333L    # 0.85

    .line 339
    iget v8, v3, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    :try_start_1
    iget v3, v3, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    cmpg-double v3, v4, v8

    if-gez v3, :cond_0

    :try_start_2
    const-string v3, "initCamera openDriver with fixed size"

    .line 340
    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v3, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, p1, v4}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;Landroid/graphics/Point;)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;Landroid/graphics/Point;)V

    .line 346
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->handler:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;

    if-nez p1, :cond_1

    .line 347
    new-instance p1, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;

    iget-object v3, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Vector;

    iget-object v4, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->decodeHints:Ljava/util/Map;

    iget-object v5, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;-><init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->handler:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCamera exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->retQrScanNoPermission()V

    :cond_1
    :goto_1
    return-void
.end method

.method private isPortrait()Z
    .locals 1

    .line 664
    iget-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->isPortrait:Z

    return v0
.end method

.method private playBeepSoundAndVibrate()V
    .locals 3

    .line 516
    iget-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 519
    :cond_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->vibrate:Z

    if-eqz v0, :cond_1

    const-string v0, "vibrator"

    .line 520
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    .line 521
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void
.end method

.method private static requestAlbumThenExecute(Landroid/app/Activity;)V
    .locals 8

    .line 543
    invoke-static {p0}, Lcom/netease/ntunisdk/zxing/utils/Util;->isMediaPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    invoke-static {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->startPickLocalImage(Landroid/app/Activity;)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ENABLE_UNISDK_PERMISSION_TIPS"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_3

    .line 548
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_QRCODE_EXTERNAL_STORAGE_PERMISSION_TIPS"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPermission,UNISDK_QRCODE_EXTERNAL_STORAGE_PERMISSION_TIPS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniQR act"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "ntunisdk_scan_request_external_storage"

    .line 551
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v2, v0

    const-string v0, "ntunisdk_scan_camera_permission_sure"

    .line 553
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "ntunisdk_scan_camera_permission_cancel"

    .line 554
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 555
    new-instance v1, Lcom/netease/ntunisdk/UniAlertDialog;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/UniAlertDialog;-><init>(Landroid/app/Activity;)V

    new-instance v5, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$6;

    invoke-direct {v5, p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$6;-><init>(Landroid/app/Activity;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/netease/ntunisdk/UniAlertDialog;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x7996

    .line 562
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/zxing/utils/Util;->requestMediaPermission(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method private retQrScanNoPermission()V
    .locals 4

    .line 356
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 357
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "qr_scan_result"

    const-string v3, ""

    .line 358
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "no_permission"

    const/4 v3, 0x1

    .line 359
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0xa1

    .line 361
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 362
    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->finish()V

    return-void
.end method

.method private retQrScanResult(Ljava/lang/String;)V
    .locals 3

    .line 303
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 304
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "qr_scan_result"

    .line 305
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p1, 0xa1

    .line 307
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 308
    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->finish()V

    return-void
.end method

.method private setOrientation()V
    .locals 4

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->isPortrait:Z

    .line 182
    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SCR_ORIENTATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->scrOrientation:I

    .line 183
    iget v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->scrOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->isPortrait:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    .line 192
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 188
    :cond_3
    iput-boolean v2, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->isPortrait:Z

    .line 189
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method private showImagePopupWindow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 285
    invoke-static {p0}, Lcom/netease/ntunisdk/imageutil/ImageUtil;->isFinishing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is finishing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UniQR act"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 289
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$5;-><init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static startPickLocalImage(Landroid/app/Activity;)V
    .locals 5

    .line 569
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 570
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "image/*"

    const-string v3, "android.intent.action.GET_CONTENT"

    const/16 v4, 0x13

    if-ge v1, v4, :cond_0

    .line 571
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 577
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 578
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/16 v1, 0x68

    .line 581
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method drawViewfinder()V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->drawViewfinder()V

    return-void
.end method

.method getCameraManager()Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->handler:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;

    return-object v0
.end method

.method public getHeadHeight()I
    .locals 1

    .line 491
    iget v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->headHeight:I

    return v0
.end method

.method handleDecode(Lcom/google/zxing/Result;)V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;->onActivity()V

    .line 473
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->playBeepSoundAndVibrate()V

    .line 476
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decode resultString : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniQR act"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ntunisdk_scan_fail"

    .line 479
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, ""

    .line 483
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->retQrScanResult(Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 632
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "UniQR act"

    const-string v1, "onActivityResult"

    .line 633
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x68

    if-ne v1, p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const-string p1, "pickImage FAILED"

    .line 636
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 640
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 642
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 643
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 645
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 646
    new-instance p2, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$9;

    invoke-direct {p2, p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$9;-><init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)V

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/zxing/utils/Util;->scanningImage(Ljava/lang/String;Lcom/netease/ntunisdk/zxing/utils/Util$ScanImageCallback;)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->openFlashIv:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 528
    iget-boolean p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->flashOpened:Z

    const-string v0, "drawable"

    if-eqz p1, :cond_0

    .line 529
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    .line 530
    iput-boolean v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->flashOpened:Z

    .line 531
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->openFlashIv:Landroid/widget/ImageView;

    const-string v1, "ntunisdk_open_flash"

    invoke-static {p0, v1, v0}, Lcom/netease/ntunisdk/zxing/utils/Util;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 533
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    .line 534
    iput-boolean v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->flashOpened:Z

    .line 535
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->openFlashIv:Landroid/widget/ImageView;

    const-string v1, "ntunisdk_open_flash_selected"

    invoke-static {p0, v1, v0}, Lcom/netease/ntunisdk/zxing/utils/Util;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->openAlbumIv:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 538
    invoke-static {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->requestAlbumThenExecute(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "UniQR act"

    const-string v0, "onCreate..."

    .line 115
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const/16 v1, 0x400

    .line 123
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 125
    invoke-static {p1}, Lcom/netease/ntunisdk/zxing/utils/Util;->hideSystemUI(Landroid/view/Window;)V

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->setOrientation()V

    .line 129
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->isPortrait()Z

    move-result p1

    const-string v1, "layout"

    if-eqz p1, :cond_1

    const-string p1, "ntunisdk_scanner_port"

    .line 130
    invoke-static {p0, p1, v1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->setContentView(I)V

    goto :goto_0

    :cond_1
    const-string p1, "ntunisdk_scanner_land"

    .line 132
    invoke-static {p0, p1, v1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->setContentView(I)V

    :goto_0
    const-string p1, "id"

    const-string v1, "open_flash_btn"

    .line 135
    invoke-static {p0, v1, p1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->openFlashIv:Landroid/widget/ImageView;

    const-string v1, "open_album_btn"

    .line 136
    invoke-static {p0, v1, p1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->openAlbumIv:Landroid/widget/ImageView;

    .line 137
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "HIDE_QRCODE_FLASH_BTN"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v0, :cond_2

    .line 138
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->openFlashIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->openFlashIv:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :goto_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "REMOVE_JUMP_ALBUM"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 143
    :goto_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v4

    const-string v5, "HIDE_QRCODE_ALBUM_BTN"

    invoke-interface {v4, v5, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_3

    .line 146
    :cond_4
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->openAlbumIv:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 144
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->openAlbumIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    const-string v1, "ntunisdk_scanner_toolbar_back"

    .line 149
    invoke-static {p0, v1, p1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->back:Landroid/widget/ImageView;

    .line 150
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->back:Landroid/widget/ImageView;

    new-instance v3, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$2;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$2;-><init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iput-boolean v2, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 158
    new-instance v1, Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;

    const-string v1, "ntunisdk_head_rlt"

    .line 160
    invoke-static {p0, v1, p1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 161
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->isPortrait()Z

    move-result v3

    new-array v4, v0, [Landroid/view/View;

    aput-object v1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/netease/ntunisdk/zxing/utils/Util;->adaptNotch(Landroid/app/Activity;Z[Landroid/view/View;)V

    .line 162
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 163
    new-instance v4, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$3;

    invoke-direct {v4, p0, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$3;-><init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Landroid/widget/FrameLayout;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const-string v1, "ntunisdk_scanner_toolbar_title"

    .line 171
    invoke-static {p0, v1, p1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v1, "ntunisdk_scan_head_tv"

    .line 172
    invoke-static {p0, v1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    new-instance p1, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;-><init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->orientationDetector:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;

    const/4 p1, 0x5

    .line 175
    iget v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->scrOrientation:I

    if-ne p1, v1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->doChangeCameraOrientation:Z

    .line 177
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->checkShowLatestImage()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;->shutdown()V

    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "UniQR act"

    const-string v1, "onPause..."

    .line 314
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->handler:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->handler:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivityHandler;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->closeDriver()V

    .line 321
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->orientationDetector:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->disable()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const/16 p2, 0x7996

    if-ne p1, p2, :cond_4

    .line 588
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 589
    invoke-static {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->startPickLocalImage(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 590
    :cond_0
    invoke-static {p0}, Lcom/netease/ntunisdk/zxing/utils/Util;->getMediaPermission(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    const-string p2, "ntunisdk_scan_refuse_external_storage"

    const-string p3, "ntunisdk_scan_camera_permission_cancel"

    const-string v0, "requestPermission,UNISDK_EXTERNAL_STORAGE_PERMISSION_REFUSE_TIPS:"

    const-string v1, "UniQR act"

    const-string v2, "UNISDK_QRCODE_EXTERNAL_STORAGE_PERMISSION_REFUSE_TIPS"

    if-eqz p1, :cond_2

    .line 591
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    invoke-static {p0, p2}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v1, p1

    const-string p1, "ntunisdk_scan_permission_retry"

    .line 596
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 597
    invoke-static {p0, p3}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 598
    new-instance v0, Lcom/netease/ntunisdk/UniAlertDialog;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/UniAlertDialog;-><init>(Landroid/app/Activity;)V

    new-instance v4, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$7;

    invoke-direct {v4, p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$7;-><init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/netease/ntunisdk/UniAlertDialog;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    .line 606
    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 609
    invoke-static {p0, p2}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    move-object v1, p1

    const-string p1, "ntunisdk_scan_permission_setting"

    .line 611
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 612
    invoke-static {p0, p3}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 613
    new-instance v0, Lcom/netease/ntunisdk/UniAlertDialog;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/UniAlertDialog;-><init>(Landroid/app/Activity;)V

    new-instance v4, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$8;

    invoke-direct {v4, p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$8;-><init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/netease/ntunisdk/UniAlertDialog;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "UniQR act"

    const-string v1, "onResume..."

    .line 203
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/zxing/utils/Util;->hideSystemUI(Landroid/view/Window;)V

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->flashOpened:Z

    .line 209
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->openFlashIv:Landroid/widget/ImageView;

    const-string v2, "ntunisdk_open_flash"

    const-string v3, "drawable"

    invoke-static {p0, v2, v3}, Lcom/netease/ntunisdk/zxing/utils/Util;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    const-string v2, "id"

    if-nez v1, :cond_0

    .line 212
    new-instance v1, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;-><init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    const-string v1, "ntunisdk_viewfinder_content"

    .line 213
    invoke-static {p0, v1, v2}, Lcom/netease/ntunisdk/zxing/utils/Util;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;

    iput-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;

    .line 214
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;

    iget-object v3, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1, v3}, Lcom/netease/ntunisdk/zxing/client/android/ViewfinderView;->setCameraManager(Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;)V

    :cond_0
    const-string v1, "ntunisdk_scanner_view"

    .line 217
    invoke-static {p0, v1, v2}, Lcom/netease/ntunisdk/zxing/utils/Util;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 218
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 219
    iget-boolean v2, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-eqz v2, :cond_1

    .line 220
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 222
    :cond_1
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v2, 0x3

    .line 223
    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    :goto_0
    const/4 v1, 0x0

    .line 226
    iput-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Vector;

    .line 227
    iput-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    const/4 v1, 0x1

    .line 229
    iput-boolean v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->playBeep:Z

    const-string v2, "audio"

    .line 230
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 231
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 232
    iput-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->playBeep:Z

    .line 234
    :cond_2
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->initBeepSound()V

    .line 235
    iput-boolean v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->vibrate:Z

    .line 237
    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 239
    invoke-static {v0}, Lcom/netease/ntunisdk/zxing/client/android/DecodeHintManager;->parseDecodeHints(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->decodeHints:Ljava/util/Map;

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->orientationDetector:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->enable()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 247
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UniQR act"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->cameraManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p1}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->autoFocus()V

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/zxing/utils/Util;->hideSystemUI(Landroid/view/Window;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "surfaceChanged... "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UniQR act"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "UniQR act"

    const-string v1, "surfaceCreated..."

    .line 367
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-boolean v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-nez v1, :cond_0

    const-string v1, "surfaceCreated, hasSurface is false..."

    .line 369
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 371
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 373
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->fixPreView(Landroid/view/SurfaceHolder;)V

    .line 375
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->calculateBtnsLayout()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "UniQR act"

    const-string v0, "surfaceDestroyed..."

    .line 456
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 457
    iput-boolean p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->hasSurface:Z

    return-void
.end method

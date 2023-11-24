.class Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;
.super Landroid/view/OrientationEventListener;
.source "CaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationDetector"
.end annotation


# instance fields
.field private mDisplayRotation:I

.field final synthetic this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    .line 672
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 669
    iput p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->mDisplayRotation:I

    return-void
.end method

.method private getCameraDisplayOrientation(I)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x15e

    if-gt p1, v1, :cond_4

    const/16 v1, 0xa

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x46

    if-le p1, v1, :cond_2

    const/16 v1, 0x6e

    if-ge p1, v1, :cond_2

    const/16 v0, 0x5a

    goto :goto_1

    :cond_2
    const/16 v1, 0xaa

    if-le p1, v1, :cond_3

    const/16 v1, 0xbe

    if-ge p1, v1, :cond_3

    const/16 v0, 0xb4

    goto :goto_1

    :cond_3
    const/16 v1, 0xfa

    if-le p1, v1, :cond_5

    const/16 v1, 0x122

    if-ge p1, v1, :cond_5

    const/16 v0, 0x10e

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :cond_5
    :goto_1
    return v0
.end method

.method private getDisplayRotation()I
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method private getDisplayRotationDegrees()I
    .locals 3

    .line 714
    iget v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->mDisplayRotation:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10e

    goto :goto_0

    :cond_1
    const/16 v1, 0xb4

    goto :goto_0

    :cond_2
    const/16 v1, 0x5a

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    .line 679
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->getCameraDisplayOrientation(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 684
    :cond_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->getDisplayRotation()I

    move-result v0

    .line 685
    iget v1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->mDisplayRotation:I

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 687
    :goto_0
    iput v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->mDisplayRotation:I

    .line 688
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-static {v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->access$400(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-static {v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->access$500(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 689
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-static {v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->access$400(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->setCameraDisplayOrientation(I)V

    :cond_2
    return-void
.end method

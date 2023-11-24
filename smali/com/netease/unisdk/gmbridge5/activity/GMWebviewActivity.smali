.class public Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
.super Landroid/app/Activity;
.source "GMWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;
    }
.end annotation


# static fields
.field public static final CUTOUT_HEIGHT:Ljava/lang/String; = "CUTOUT_HEIGHT"

.field public static final CUTOUT_WIDTH:Ljava/lang/String; = "CUTOUT_WIDTH"

.field public static final GM_HASCUTOUT:Ljava/lang/String; = "GM_HASCUTOUT"

.field public static final GM_WEBVIEW_URL:Ljava/lang/String; = "GM_WEBVIEW_URL"

.field public static final REQUEST_CODE_PICK_FROM_ALBUM:I = 0x143

.field public static final REQUEST_CODE_PICK_FROM_ALBUM_HTML:I = 0x145

.field public static final REQUEST_CODE_PICK_FROM_CAMERA:I = 0x144

.field public static final REQUEST_CODE_PICK_FROM_CAMERA_HTML:I = 0x146

.field private static final REQUEST_PERMISSIONS_CAMERA_REQUEST_CODE:I = 0x147

.field private static final REQUEST_PERMISSIONS_RECORD_AUDIO:I = 0x148

.field private static final REQUEST_PERMISSIONS_STORAGE_REQUEST_CODE:I = 0x149

.field private static final TAG:Ljava/lang/String; = "gm_bridge"

.field public static getUserTicketCallbackFunc:Ljava/lang/String;

.field public static orientationVar:Z

.field private static sInstance:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;


# instance fields
.field private imagePath:Ljava/lang/String;

.field private isSensorChanged:Z

.field private mBatteryInfo:Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;

.field private mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

.field private mBlackBorderRight:Landroid/widget/LinearLayout;

.field private mBlackBorderTop:Landroid/widget/LinearLayout;

.field private mCameraImgPath:Ljava/lang/String;

.field private mContentView:Landroid/widget/RelativeLayout;

.field private mCurPageUrl:Ljava/lang/String;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mFullscreenVideoView:Landroid/widget/FrameLayout;

.field private mFullscreenVideoViewShowing:Z

.field private mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

.field private mImgPickDialogOnClick:Z

.field private mOnPause:Z

.field private mPagescrollXMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPagescrollYMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPickImgByHtml:Z

.field private mRefreshRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mRemoteUrl:Ljava/lang/String;

.field private mRequest:Landroid/webkit/PermissionRequest;

.field private mRightNavigationBar:Landroid/widget/RelativeLayout;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSetContentMarginFlag:Z

.field private mTopNavigationBar:Landroid/widget/RelativeLayout;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadMessageAboveL:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWebView:Landroid/webkit/WebView;

.field private neteaseMethodMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressBar:Landroid/widget/ProgressBar;

.field private rotation:I

.field saveImageConfirmDialog:Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    .line 145
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->imagePath:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPagescrollXMap:Ljava/util/Map;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPagescrollYMap:Ljava/util/Map;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->neteaseMethodMaps:Ljava/util/Map;

    .line 1859
    new-instance v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$22;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$22;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->isSensorChanged:Z

    return p0
.end method

.method static synthetic access$002(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->isSensorChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->hideVirtualNavigationBar()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCurPageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCurPageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/util/Map;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPagescrollXMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/util/Map;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPagescrollYMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->refreshNavigationBar()V

    return-void
.end method

.method static synthetic access$1400(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Ljava/lang/String;)Z
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->isApplicationAvilible(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Ljava/lang/String;)Z
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->isGmSupportScheme(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Ljava/lang/String;)Z
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->interceptUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mFullscreenVideoView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->hideNavigationBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mFullscreenVideoViewShowing:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mFullscreenVideoViewShowing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showWebView()V

    return-void
.end method

.method static synthetic access$2200(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setScreenOrientation()V

    return-void
.end method

.method static synthetic access$2302(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->openImageChooser()V

    return-void
.end method

.method static synthetic access$2502(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/webkit/PermissionRequest;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRequest:Landroid/webkit/PermissionRequest;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/webkit/PermissionRequest;)Landroid/webkit/PermissionRequest;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRequest:Landroid/webkit/PermissionRequest;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showRecordReasonDialog()V

    return-void
.end method

.method static synthetic access$2800(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showIsSaveImageSuccessTip(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mImgPickDialogOnClick:Z

    return p0
.end method

.method static synthetic access$2902(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mImgPickDialogOnClick:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/view/animation/RotateAnimation;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRefreshRotateAnimation:Landroid/view/animation/RotateAnimation;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->pick()V

    return-void
.end method

.method static synthetic access$302(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/view/animation/RotateAnimation;)Landroid/view/animation/RotateAnimation;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRefreshRotateAnimation:Landroid/view/animation/RotateAnimation;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->capture()V

    return-void
.end method

.method static synthetic access$3200(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPickImgByHtml:Z

    return p0
.end method

.method static synthetic access$3300(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/content/Intent;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->uploadResultMessage(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3402(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCameraImgPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->rotation:I

    return p0
.end method

.method static synthetic access$3502(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;I)I
    .locals 0

    .line 99
    iput p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->rotation:I

    return p1
.end method

.method static synthetic access$3600(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBlackBorderRight:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showRightBlackBorder()V

    return-void
.end method

.method static synthetic access$3900(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showTopBlackBorder()V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    return-object p0
.end method

.method static synthetic access$402(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;)Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    return-object p1
.end method

.method static synthetic access$502(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;)Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryInfo:Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->imagePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->imagePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->save2Album(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showPermissionReasonDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private capture()V
    .locals 3

    .line 1486
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 1487
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1488
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->getImgSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCameraImgPath:Ljava/lang/String;

    .line 1489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraImgPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCameraImgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gm_bridge"

    invoke-static {v2, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCameraImgPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "output"

    .line 1492
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1493
    iget-boolean v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPickImgByHtml:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x146

    goto :goto_0

    :cond_0
    const/16 v1, 0x144

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private fitContentView()V
    .locals 4

    .line 1001
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getScreenSize()V

    .line 1002
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mSetContentMarginFlag:Z

    if-eqz v0, :cond_1

    .line 1003
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$id;->content_view:I

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1004
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1005
    iget v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    iget v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenHeight:I

    const/16 v3, 0x5a

    if-le v1, v2, :cond_0

    .line 1006
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1007
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 1009
    :cond_0
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1010
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_1
    :goto_0
    return-void
.end method

.method private getFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    .line 1509
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1513
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1514
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, "fromFile Exception : "

    const-string v4, "gm_bridge"

    if-ge p1, v2, :cond_1

    .line 1516
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    .line 1522
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".gmbridge.fileprovider"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authority = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge5/provider/GmFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUriForFile Exception : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-nez v1, :cond_2

    .line 1531
    :try_start_2
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object v1
.end method

.method public static getInstance()Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
    .locals 1

    .line 396
    sget-object v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->sInstance:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    return-object v0
.end method

.method private getScreenSize()V
    .locals 3

    .line 354
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 355
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    .line 356
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenHeight:I

    const/4 v0, 0x2

    .line 357
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "gm_bridge"

    const-string v2, "Screen [%d,%d]"

    invoke-static {v1, v2, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private handleIPC(Ljava/lang/String;)V
    .locals 2

    .line 1847
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_WEBVIEW_SINGLE_PROCESS:I

    if-eqz v0, :cond_0

    .line 1848
    sget-object v0, Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService;->callback:Lcom/netease/unisdk/gmbridge5/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1850
    :try_start_0
    sget-object v0, Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService;->callback:Lcom/netease/unisdk/gmbridge5/IRemoteCallback;

    invoke-interface {v0, p1}, Lcom/netease/unisdk/gmbridge5/IRemoteCallback;->call(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gm_bridge"

    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private hasCamera()Z
    .locals 3

    .line 1223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 1224
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1225
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1226
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1227
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private hideNavigationBar()V
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mTopNavigationBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private hideVirtualNavigationBar()V
    .locals 3

    const-string v0, "gm_bridge"

    const-string v1, "hideVirtualNavigationBar..."

    .line 958
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/16 v2, 0xb

    if-le v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    .line 960
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 961
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 962
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 964
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    .line 967
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initBlackBorder(ZII)V
    .locals 4

    const-string v0, "black_border_right"

    .line 331
    invoke-static {p0, v0}, Lcom/netease/unisdk/gmbridge5/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBlackBorderRight:Landroid/widget/LinearLayout;

    const-string v0, "black_border_top"

    .line 332
    invoke-static {p0, v0}, Lcom/netease/unisdk/gmbridge5/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBlackBorderTop:Landroid/widget/LinearLayout;

    if-ge p2, p3, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 339
    :goto_1
    sget-object p3, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER_COLOR:Ljava/lang/String;

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CUTOUT_BLACK_BORDER_COLOR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GM_USE_FONTS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_USE_FONTS:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBlackBorderRight:Landroid/widget/LinearLayout;

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 346
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBlackBorderTop:Landroid/widget/LinearLayout;

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 349
    :cond_2
    iget-object p3, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBlackBorderRight:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x5a

    if-eqz p1, :cond_3

    const/16 v2, 0x5a

    goto :goto_2

    :cond_3
    move v2, p2

    :goto_2
    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object p3, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBlackBorderTop:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_4

    const/16 p2, 0x5a

    :cond_4
    invoke-direct {v0, v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initNavigationItem(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 415
    new-instance v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$2;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$2;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 429
    new-instance p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$3;

    invoke-direct {p1, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$3;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 440
    new-instance p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$4;

    invoke-direct {p1, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$4;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz p4, :cond_3

    .line 452
    new-instance p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;

    invoke-direct {p1, p0, p4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/widget/ImageView;)V

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private initNavigationView()V
    .locals 4

    .line 400
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$id;->t_close:I

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 401
    sget v1, Lcom/netease/unisdk/gmbridgelib/R$id;->t_back:I

    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 402
    sget v2, Lcom/netease/unisdk/gmbridgelib/R$id;->t_forward:I

    invoke-virtual {p0, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 403
    sget v3, Lcom/netease/unisdk/gmbridgelib/R$id;->t_refresh:I

    invoke-virtual {p0, v3}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 404
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->initNavigationItem(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 406
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$id;->r_close:I

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 407
    sget v1, Lcom/netease/unisdk/gmbridgelib/R$id;->r_back:I

    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 408
    sget v2, Lcom/netease/unisdk/gmbridgelib/R$id;->r_forward:I

    invoke-virtual {p0, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 409
    sget v3, Lcom/netease/unisdk/gmbridgelib/R$id;->r_refresh:I

    invoke-virtual {p0, v3}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 410
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->initNavigationItem(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method

.method private initWebView()V
    .locals 6

    .line 566
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$id;->web:I

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    .line 567
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 568
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_SHOW_LOADING:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 569
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 571
    :cond_0
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->fitContentView()V

    .line 581
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserAgent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gm_bridge"

    invoke-static {v4, v3}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " getUserTicket/1"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserAgent1 : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->MODIFY_USERAGENT:I

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 587
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " unisdkloginchannel/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->USERAGENT_CHANNEL:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserAgent2 : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$7;

    invoke-direct {v3, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$7;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 607
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;

    invoke-direct {v3, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 648
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 649
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 650
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 651
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 652
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 653
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 654
    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 655
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v3, v5, :cond_2

    .line 656
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 659
    :cond_2
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 660
    sget-object v3, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 661
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 662
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 666
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 667
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 668
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 669
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 673
    :cond_3
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 818
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 924
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GM_WEBVIEW_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private interceptUrl(Ljava/lang/String;)Z
    .locals 10

    const-string v0, "json : "

    const-string v1, "gm"

    .line 1035
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const-string v2, "csa/upload/image"

    .line 1038
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 1040
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRemoteUrl:Ljava/lang/String;

    .line 1041
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showImgPickDialog()V

    return v4

    :cond_1
    const-string v2, "csa/info"

    .line 1043
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v5, "callback"

    const-string v6, "gm_bridge"

    if-eqz v2, :cond_3

    .line 1044
    invoke-static {p1, v5}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge5/device/DeviceUtil;->getDeviceInfo(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;

    move-result-object v0

    .line 1047
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryInfo:Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;

    if-eqz v1, :cond_2

    .line 1048
    iget-object v1, v1, Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;->batteryLevel:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->batteryLevel:Ljava/lang/String;

    .line 1049
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryInfo:Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;

    iget-object v1, v1, Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;->batteryStatus:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->batteryStatus:Ljava/lang/String;

    .line 1051
    :cond_2
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 1052
    invoke-virtual {p0, v0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_3
    const-string v2, "csa/start_record"

    .line 1054
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v4

    :cond_4
    const-string v2, "csa/stop_record"

    .line 1058
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v4

    :cond_5
    const-string v2, "csa/cancel_record"

    .line 1061
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v4

    :cond_6
    const-string v2, "csa/play_record"

    .line 1064
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v4

    :cond_7
    const-string v2, "csa/stop_play"

    .line 1071
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v4

    :cond_8
    const-string v2, "csa/set_window_size"

    .line 1074
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    const-string v1, "w"

    .line 1078
    invoke-static {p1, v1}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    :try_start_1
    const-string v2, "h"

    .line 1083
    invoke-static {p1, v2}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string v2, "align"

    .line 1087
    invoke-static {p1, v2}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1088
    iget v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    iget v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    invoke-direct {p0, v1, v0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->updateViewSizeAndPosition(IILjava/lang/String;)V

    return v4

    :cond_9
    const-string v2, "csa/play_video"

    .line 1090
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v7, "android.intent.action.VIEW"

    if-eqz v2, :cond_a

    const-string v0, "link"

    .line 1091
    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1092
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1094
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/mp4"

    .line 1095
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->startActivity(Landroid/content/Intent;)V

    return v4

    :cond_a
    const-string v2, "//extend"

    .line 1098
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "methodId"

    if-eqz v8, :cond_e

    const-string v3, "extend func"

    .line 1099
    invoke-static {v6, v3}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "func : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v3, "params"

    .line 1103
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "params : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1108
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    check-cast v5, Lcom/netease/ntunisdk/base/SdkBase;

    if-eqz v5, :cond_b

    .line 1112
    invoke-virtual {v5, v3}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1114
    :cond_b
    invoke-direct {p0, v3}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->handleIPC(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 1119
    :catch_2
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1121
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1122
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 1123
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1125
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1126
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 1130
    :cond_c
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    if-eqz v0, :cond_d

    .line 1134
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    goto :goto_2

    .line 1136
    :cond_d
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->handleIPC(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extend func Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v4

    :cond_e
    const-string v0, "csa/market"

    .line 1143
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "url"

    .line 1144
    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.BROWSABLE"

    .line 1146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1148
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->startActivity(Landroid/content/Intent;)V

    return v4

    :cond_f
    const-string v0, "csa/set_screen_orientation"

    .line 1150
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1153
    instance-of v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivityEx;

    if-nez v0, :cond_11

    const-string v0, "orientation"

    .line 1154
    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    .line 1155
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1156
    invoke-virtual {p0, v3}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setRequestedOrientation(I)V

    const/4 p1, 0x2

    .line 1157
    sput p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    goto :goto_3

    :cond_10
    const-string v0, "2"

    .line 1158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1159
    invoke-virtual {p0, v4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setRequestedOrientation(I)V

    .line 1160
    sput v4, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    :cond_11
    :goto_3
    return v4

    :cond_12
    const-string v0, "getUserTicket"

    .line 1164
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "gmbridge"

    const-string v8, "source"

    if-eqz v1, :cond_15

    .line 1165
    invoke-static {p1, v5}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserTicket callback = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1168
    sput-object p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getUserTicketCallbackFunc:Ljava/lang/String;

    .line 1170
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1172
    :try_start_4
    invoke-virtual {p1, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1173
    invoke-virtual {p1, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1174
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1175
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    if-eqz v0, :cond_13

    .line 1177
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->ntExtendFunc(Ljava/lang/String;)V

    goto :goto_4

    .line 1179
    :cond_13
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->handleIPC(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_14
    :goto_4
    return v4

    :cond_15
    const-string v0, "callNeteaseMethod"

    .line 1185
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "method"

    .line 1186
    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callNeteaseMethod method = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    invoke-static {p1, v5}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callNeteaseMethod callback = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1191
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->neteaseMethodMaps:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1195
    :try_start_5
    invoke-virtual {p1, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1196
    invoke-virtual {p1, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1197
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1198
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    if-eqz v0, :cond_16

    .line 1200
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->ntExtendFunc(Ljava/lang/String;)V

    goto :goto_5

    .line 1202
    :cond_16
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->handleIPC(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_17
    :goto_5
    return v4

    :cond_18
    const-string v0, "cbgAuthReq"

    .line 1209
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "action"

    .line 1211
    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "openBrowser"

    .line 1212
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "webUrl"

    .line 1213
    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/UriUtil;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1214
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v7, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1215
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->startActivity(Landroid/content/Intent;)V

    :cond_19
    return v4

    :cond_1a
    return v3
.end method

.method private isApplicationAvilible(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1834
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isGmSupportScheme(Ljava/lang/String;)Z
    .locals 5

    .line 551
    sget-object v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_SCHEME_PFEFIX:Ljava/lang/String;

    .line 552
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, ";"

    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 554
    array-length v1, v0

    if-lez v1, :cond_1

    .line 555
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 556
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isLandscape()Z
    .locals 3

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLandscape() orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    nop

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method private onSaveSuccess(Ljava/io/File;)V
    .locals 1

    .line 991
    new-instance v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$12;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private openImageChooser()V
    .locals 1

    const/4 v0, 0x1

    .line 1504
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPickImgByHtml:Z

    .line 1505
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showImgPickDialog()V

    return-void
.end method

.method private pick()V
    .locals 2

    .line 1498
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 1499
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    iget-boolean v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPickImgByHtml:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x145

    goto :goto_0

    :cond_0
    const/16 v1, 0x143

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private refreshNavigationBar()V
    .locals 7

    const-string v0, "gm_bridge"

    const-string v1, "refreshNavigationBar..."

    .line 930
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    sget v1, Lcom/netease/unisdk/gmbridgelib/R$id;->t_back:I

    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 932
    sget v2, Lcom/netease/unisdk/gmbridgelib/R$id;->t_forward:I

    invoke-virtual {p0, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 933
    sget v3, Lcom/netease/unisdk/gmbridgelib/R$id;->r_back:I

    invoke-virtual {p0, v3}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 934
    sget v4, Lcom/netease/unisdk/gmbridgelib/R$id;->r_forward:I

    invoke-virtual {p0, v4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 936
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCanGoBack : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCanGoForward : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$drawable;->uni_gm_p_b_s:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 941
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$drawable;->uni_gm_p_b_s:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 943
    :cond_0
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$drawable;->uni_gm_p_b_d:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 944
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$drawable;->uni_gm_p_b_d:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 947
    :goto_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 948
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$drawable;->uni_gm_p_q_s:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 949
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$drawable;->uni_gm_p_q_s:I

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 951
    :cond_1
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$drawable;->uni_gm_p_q_d:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 952
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$drawable;->uni_gm_p_q_d:I

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method private registerBatteryReceiver()V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 532
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    .line 534
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    new-instance v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$6;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$6;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-direct {v0, v1}, Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;-><init>(Lcom/netease/unisdk/gmbridge5/receiver/IBatteryChangeListener;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    .line 546
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private save2Album(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 972
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gmbridge_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 974
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 975
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 976
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 977
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 978
    invoke-direct {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->onSaveSuccess(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 980
    new-instance v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$11;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$11;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 986
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setScreenOrientation()V
    .locals 3

    .line 361
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 362
    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 363
    :cond_0
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/4 v1, 0x7

    if-ne v1, v0, :cond_1

    .line 364
    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 365
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 367
    :cond_2
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/4 v1, 0x4

    if-ne v1, v0, :cond_3

    .line 368
    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    .line 369
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/4 v2, 0x6

    if-ne v0, v1, :cond_4

    .line 370
    invoke-virtual {p0, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    .line 371
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    if-ne v0, v1, :cond_5

    const/16 v0, 0x9

    .line 372
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 373
    :cond_5
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    if-ne v2, v0, :cond_6

    const/16 v0, 0x8

    .line 374
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setRequestedOrientation(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private showImgPickDialog()V
    .locals 6

    .line 1231
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1232
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/unisdk/gmbridgelib/R$array;->uni_gm_img_pick_dlg_items:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1234
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->hasCamera()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 1235
    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 1236
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    if-eqz v5, :cond_0

    .line 1237
    iget-object v1, v5, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mASButtonTitleLibrary:Ljava/lang/String;

    aput-object v1, v2, v4

    .line 1238
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    iget-object v1, v1, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mASButtonTitleCamera:Ljava/lang/String;

    aput-object v1, v2, v3

    goto :goto_0

    .line 1240
    :cond_0
    aget-object v5, v1, v4

    aput-object v5, v2, v4

    .line 1241
    aget-object v1, v1, v3

    aput-object v1, v2, v3

    goto :goto_0

    .line 1244
    :cond_1
    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 1245
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    if-eqz v5, :cond_2

    .line 1246
    iget-object v1, v5, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mASButtonTitleLibrary:Ljava/lang/String;

    aput-object v1, v2, v4

    goto :goto_0

    .line 1248
    :cond_2
    aget-object v1, v1, v4

    aput-object v1, v2, v4

    .line 1253
    :goto_0
    new-instance v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1282
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_3

    .line 1283
    new-instance v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$14;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$14;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1292
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1293
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1294
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showIsSaveImageSuccessTip(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1319
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    if-eqz p1, :cond_0

    .line 1320
    iget-object p1, p1, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mSaveImageSuccessTip:Ljava/lang/String;

    goto :goto_0

    .line 1322
    :cond_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netease/unisdk/gmbridgelib/R$string;->uni_gm_save_image_success_tip:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1325
    :cond_1
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    if-eqz p1, :cond_2

    .line 1326
    iget-object p1, p1, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mSaveImageFailTip:Ljava/lang/String;

    goto :goto_0

    .line 1328
    :cond_2
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netease/unisdk/gmbridgelib/R$string;->uni_gm_save_image_fail_tip:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1332
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 1333
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void
.end method

.method private showPermissionReasonDialog(I)V
    .locals 9

    .line 1425
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$style;->uni_gm_AppCompat_dialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, ""

    const/16 v2, 0x149

    const/16 v3, 0x147

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    move-object v4, v1

    goto :goto_0

    .line 1432
    :cond_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/netease/unisdk/gmbridgelib/R$string;->uni_gm_need_storage_permission:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1429
    :cond_1
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/netease/unisdk/gmbridgelib/R$string;->uni_gm_need_camera_permission:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1438
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showPermissionReasonDialog--local msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gm_bridge"

    invoke-static {v6, v5}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/netease/unisdk/gmbridgelib/R$string;->uni_gm_permission_sure:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1440
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/netease/unisdk/gmbridgelib/R$string;->uni_gm_permission_cancel:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1441
    iget-object v8, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    if-eqz v8, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    :goto_1
    move-object v4, v1

    goto :goto_2

    .line 1447
    :cond_2
    iget-object v1, v8, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mNeedStoragePermission:Ljava/lang/String;

    goto :goto_1

    .line 1444
    :cond_3
    iget-object v1, v8, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mNeedCameraPermission:Ljava/lang/String;

    goto :goto_1

    .line 1453
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPermissionReasonDialog--file msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    iget-object v5, v1, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mFloatAlertOk:Ljava/lang/String;

    .line 1455
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    iget-object v7, v1, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mFloatAlertCancel:Ljava/lang/String;

    .line 1458
    :cond_4
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_PERMISSION_TIPS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1459
    sget-object v4, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_PERMISSION_TIPS:Ljava/lang/String;

    .line 1462
    :cond_5
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$18;

    invoke-direct {v2, p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$18;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;I)V

    .line 1463
    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$17;

    invoke-direct {v2, p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$17;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;I)V

    .line 1472
    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1479
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 1480
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1481
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1482
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showPermissionTip()V
    .locals 2

    .line 1370
    sget-object v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_PERMISSION_TIPS2:Ljava/lang/String;

    .line 1371
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    if-eqz v1, :cond_0

    .line 1372
    iget-object v0, v1, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mPermissionInAppTip:Ljava/lang/String;

    .line 1374
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 1375
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private showRecordInAppSettingTip()V
    .locals 2

    .line 1342
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mSetRecordPermissionInAppTip:Ljava/lang/String;

    goto :goto_0

    .line 1345
    :cond_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$string;->uni_gm_record_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1348
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 1349
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private showRecordReasonDialog()V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1384
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$style;->uni_gm_AppCompat_dialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1385
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/unisdk/gmbridgelib/R$string;->uni_gm_need_record_permission:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1386
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/unisdk/gmbridgelib/R$string;->uni_gm_permission_sure:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1387
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netease/unisdk/gmbridgelib/R$string;->uni_gm_permission_cancel:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1388
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    if-eqz v4, :cond_0

    .line 1389
    iget-object v1, v4, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mNeedRecordPermission:Ljava/lang/String;

    .line 1390
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    iget-object v2, v2, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mFloatAlertOk:Ljava/lang/String;

    .line 1391
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    iget-object v3, v3, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mFloatAlertCancel:Ljava/lang/String;

    .line 1394
    :cond_0
    sget-object v4, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_GM_PERMISSION_RECORD_TIPS:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1395
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_GM_PERMISSION_RECORD_TIPS:Ljava/lang/String;

    .line 1398
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$16;

    invoke-direct {v4, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$16;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    .line 1399
    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$15;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$15;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    .line 1405
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1414
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 1415
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1416
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1417
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showRightBlackBorder()V
    .locals 3

    .line 508
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 509
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBlackBorderRight:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBlackBorderRight:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    :goto_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBlackBorderTop:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showRightNavigationBar()V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mTopNavigationBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private showSetPermissionInAppSettingTip()V
    .locals 2

    .line 1358
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mSetPermissionInAppTip:Ljava/lang/String;

    goto :goto_0

    .line 1361
    :cond_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$string;->uni_gm_camera_permission_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 1363
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showStorageInAppSettingTip()V
    .locals 2

    .line 1302
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mSetStoragePermissionInAppTip:Ljava/lang/String;

    goto :goto_0

    .line 1305
    :cond_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$string;->uni_gm_storage_permission_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1308
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 1309
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private showTopBlackBorder()V
    .locals 3

    .line 518
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 519
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBlackBorderTop:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBlackBorderTop:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 523
    :goto_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBlackBorderRight:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showTopNavigationBar()V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mTopNavigationBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private showWebView()V
    .locals 2

    .line 1016
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    .line 1017
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1020
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mFullscreenVideoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1021
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mFullscreenVideoView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1023
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1024
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    .line 1025
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenHeight:I

    .line 1026
    iget v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    iget v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenHeight:I

    if-le v0, v1, :cond_1

    .line 1027
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showRightNavigationBar()V

    goto :goto_0

    .line 1029
    :cond_1
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showTopNavigationBar()V

    :goto_0
    return-void
.end method

.method private startUpload(Ljava/lang/Object;)V
    .locals 3

    .line 1659
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRemoteUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1662
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRemoteUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;->obtain(Ljava/lang/String;)Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;

    move-result-object v0

    .line 1663
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gm_bridge"

    invoke-static {v2, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    iget-object v1, v0, Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;->callback:Ljava/lang/String;

    const-string v2, "uploading"

    invoke-virtual {p0, v2, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    new-instance v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$21;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$21;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-static {p0, v0, p1, v1}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->uploadImg(Landroid/content/Context;Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;Ljava/lang/Object;Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;)V

    return-void
.end method

.method private updateViewSizeAndPosition(IILjava/lang/String;)V
    .locals 2

    .line 1541
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1542
    iget v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenHeight:I

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    .line 1543
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1544
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const-string p2, "left"

    .line 1545
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1546
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1547
    iget p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    const-string p2, "right"

    .line 1548
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1549
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1550
    iget p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 1552
    :cond_1
    iget p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    .line 1553
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1554
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1556
    :goto_0
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private uploadResultMessage(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "gm_bridge"

    const-string v1, "uploadResultMessage >> "

    .line 1683
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x200000

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1687
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1689
    invoke-static {p0, p1, v1}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->createSuitableImgFile(Landroid/content/Context;Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1691
    :cond_0
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCameraImgPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1692
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCameraImgPath:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->createSuitableImgFile(Landroid/content/Context;Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    .line 1695
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "okPath : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1699
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v2

    .line 1702
    :goto_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    .line 1704
    new-array v3, v3, [Landroid/net/Uri;

    aput-object p1, v3, v1

    invoke-interface {v0, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 1706
    :cond_3
    invoke-interface {v0, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1708
    :goto_2
    iput-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    goto :goto_3

    .line 1709
    :cond_4
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_5

    .line 1710
    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1711
    iput-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 1713
    :cond_5
    :goto_3
    iput-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCameraImgPath:Ljava/lang/String;

    .line 1714
    iput-boolean v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPickImgByHtml:Z

    .line 1715
    iput-boolean v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mImgPickDialogOnClick:Z

    return-void
.end method


# virtual methods
.method public getJScallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1843
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->neteaseMethodMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public jsCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1560
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 1561
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "javascript:typeof %s !== \'undefined\' && %s(\'%s\')"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1563
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string v0, "gm_bridge"

    const-string v1, "call js  :  %s"

    invoke-static {v0, v1, p2}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1564
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p2, v0, :cond_1

    .line 1565
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$19;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$19;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-virtual {p2, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 1572
    :cond_1
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x2

    .line 1644
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "gm_bridge"

    const-string v1, "ntOnActivityResult requestCode = %d,resultCode = %d"

    invoke-static {p2, v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p2, 0x143

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_3

    .line 1647
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->startUpload(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x144

    if-ne p2, p1, :cond_1

    .line 1650
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mCameraImgPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->startUpload(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x145

    if-ne p2, p1, :cond_2

    .line 1652
    invoke-direct {p0, p3}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->uploadResultMessage(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x146

    if-ne p2, p1, :cond_3

    const/4 p1, 0x0

    .line 1654
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->uploadResultMessage(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1747
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1749
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mFullscreenVideoViewShowing:Z

    if-nez v0, :cond_1

    .line 1751
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const-string v2, "gmbridge_screen_changed"

    if-ne v0, v1, :cond_0

    .line 1752
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->fitContentView()V

    .line 1753
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showTopNavigationBar()V

    const-string v0, "2"

    .line 1754
    invoke-virtual {p0, v0, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1755
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1756
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->fitContentView()V

    .line 1757
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showRightNavigationBar()V

    const-string v0, "1"

    .line 1758
    invoke-virtual {p0, v0, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged, orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gm_bridge"

    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 1764
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/16 v2, 0x13

    if-le v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_2

    const/16 v0, 0x8

    .line 1765
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 1766
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v2, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_3

    const/16 v0, 0x1706

    .line 1767
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 1774
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_4

    .line 1775
    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    .line 1776
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 1777
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 181
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    sput-object p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->sInstance:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 184
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->rotation:I

    .line 186
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/16 v1, 0xe

    if-lt p1, v1, :cond_0

    const-string p1, "sensor"

    .line 187
    invoke-virtual {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 188
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "GM_HASCUTOUT"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 192
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CUTOUT_WIDTH"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 193
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CUTOUT_HEIGHT"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 194
    new-instance v4, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;

    invoke-direct {v4, p0}, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->saveImageConfirmDialog:Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetContentMarginFlag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mSetContentMarginFlag:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gm_bridge"

    invoke-static {v5, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasCutout = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cutoutWidth = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cutoutHeight = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GmSettings.ORIENTATION = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    instance-of v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivityEx;

    if-nez v4, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setScreenOrientation()V

    .line 204
    :cond_1
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/data/I18nManager;->getI18nInfo()Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mI18n:Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    .line 206
    sget v4, Lcom/netease/unisdk/gmbridgelib/R$layout;->uni_gm_web_act:I

    invoke-virtual {p0, v4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setContentView(I)V

    .line 207
    sget v4, Lcom/netease/unisdk/gmbridgelib/R$id;->top_navigation_bar:I

    invoke-virtual {p0, v4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mTopNavigationBar:Landroid/widget/RelativeLayout;

    .line 208
    sget v4, Lcom/netease/unisdk/gmbridgelib/R$id;->right_navigation_bar:I

    invoke-virtual {p0, v4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    .line 209
    sget v4, Lcom/netease/unisdk/gmbridgelib/R$id;->content_view:I

    invoke-virtual {p0, v4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mContentView:Landroid/widget/RelativeLayout;

    .line 210
    sget v4, Lcom/netease/unisdk/gmbridgelib/R$id;->full_video:I

    invoke-virtual {p0, v4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mFullscreenVideoView:Landroid/widget/FrameLayout;

    .line 211
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->initWebView()V

    .line 212
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->initNavigationView()V

    .line 213
    invoke-direct {p0, p1, v2, v3}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->initBlackBorder(ZII)V

    if-eqz p1, :cond_6

    .line 216
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge p1, v2, :cond_2

    .line 219
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mSetContentMarginFlag:Z

    goto :goto_1

    .line 242
    :cond_2
    iput-boolean v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mSetContentMarginFlag:Z

    .line 243
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUTOUT_BLACK_BORDER: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER:I

    if-ne v2, v0, :cond_5

    .line 248
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    .line 249
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mContentView:Landroid/widget/RelativeLayout;

    const/16 v3, 0x600

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    .line 251
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_4

    const/4 v2, 0x3

    .line 252
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_0

    .line 254
    :cond_4
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    .line 258
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 261
    :goto_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    .line 265
    :cond_6
    iput-boolean v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mSetContentMarginFlag:Z

    .line 269
    :goto_1
    sget p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    if-eqz p1, :cond_7

    sget p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const/4 v2, 0x4

    if-eq p1, v2, :cond_7

    .line 270
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->isLandscape()Z

    move-result p1

    sput-boolean p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->orientationVar:Z

    goto :goto_2

    .line 272
    :cond_7
    iget p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenWidth:I

    iget v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mScreenHeight:I

    if-le p1, v2, :cond_8

    const/4 v1, 0x1

    :cond_8
    sput-boolean v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->orientationVar:Z

    .line 275
    :goto_2
    sget-boolean p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->orientationVar:Z

    if-eqz p1, :cond_a

    const-string p1, "LANDSCAPE"

    .line 277
    invoke-static {v5, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER:I

    if-ne p1, v0, :cond_9

    .line 279
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showRightBlackBorder()V

    .line 281
    :cond_9
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showRightNavigationBar()V

    goto :goto_3

    :cond_a
    const-string p1, "PORTRAIT"

    .line 283
    invoke-static {v5, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER:I

    if-ne p1, v0, :cond_b

    .line 286
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showTopBlackBorder()V

    .line 288
    :cond_b
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showTopNavigationBar()V

    .line 291
    :goto_3
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->registerBatteryReceiver()V

    .line 293
    new-instance p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$1;

    invoke-direct {p1, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$1;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-static {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->assistActivity(Landroid/app/Activity;Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1722
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 1723
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1726
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1727
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1728
    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;

    .line 1730
    :cond_1
    sget-object v0, Lcom/netease/unisdk/gmbridge5/GmBridge;->sWebCloseListener:Lcom/netease/unisdk/gmbridge5/IWebCloseListener;

    if-eqz v0, :cond_2

    .line 1731
    sget-object v0, Lcom/netease/unisdk/gmbridge5/GmBridge;->sWebCloseListener:Lcom/netease/unisdk/gmbridge5/IWebCloseListener;

    invoke-interface {v0}, Lcom/netease/unisdk/gmbridge5/IWebCloseListener;->onWebClose()V

    .line 1733
    :cond_2
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 1734
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1735
    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    const-string v0, "gm_bridge"

    const-string v2, "mWebView.destroy2"

    .line 1736
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_3
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPagescrollXMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1739
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPagescrollYMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1741
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1742
    sput-object v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->sInstance:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1807
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1808
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1809
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    const-string v0, "gm_bridge"

    const-string v1, "mWebView.onPause()"

    .line 1810
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "gmbridge_enterbackground"

    .line 1811
    invoke-virtual {p0, v0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1812
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mOnPause:Z

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestPermissionsResult, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gm_bridge"

    invoke-static {v0, p2}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/16 v1, 0x147

    if-ne p1, v1, :cond_2

    if-eqz p3, :cond_0

    .line 1581
    array-length p1, p3

    if-lez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    .line 1582
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->capture()V

    goto/16 :goto_2

    :cond_0
    const-string p1, "android.permission.CAMERA"

    .line 1584
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    .line 1585
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "shouldShowRequestPermissionRationale : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 1588
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showSetPermissionInAppSettingTip()V

    goto :goto_0

    .line 1591
    :cond_1
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showPermissionTip()V

    .line 1593
    :goto_0
    iget-boolean p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mPickImgByHtml:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 1594
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->uploadResultMessage(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_2
    const/16 v1, 0x148

    if-ne p1, v1, :cond_5

    if-eqz p3, :cond_3

    .line 1598
    array-length p1, p3

    if-lez p1, :cond_3

    aget p1, p3, p2

    if-nez p1, :cond_3

    const-string p1, "RECORD_AUDIO is granted"

    .line 1599
    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "android.permission.RECORD_AUDIO"

    .line 1601
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    .line 1602
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RECORD_AUDIO...shouldShowRequestPermissionRationale : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4

    .line 1605
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showRecordInAppSettingTip()V

    goto :goto_1

    .line 1608
    :cond_4
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showPermissionTip()V

    .line 1611
    :goto_1
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRequest:Landroid/webkit/PermissionRequest;

    if-eqz p1, :cond_8

    .line 1612
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 1613
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mRequest:Landroid/webkit/PermissionRequest;

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    const-string p1, "onPermissionRequest --"

    .line 1614
    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 v1, 0x149

    if-ne p1, v1, :cond_8

    if-eqz p3, :cond_6

    .line 1617
    array-length p1, p3

    if-lez p1, :cond_6

    aget p1, p3, p2

    if-nez p1, :cond_6

    const/4 p1, 0x1

    aget p1, p3, p1

    if-nez p1, :cond_6

    const-string p1, "WRITE_EXTERNAL_STORAGE and  READ_EXTERNAL_STORAGE is granted"

    .line 1618
    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$20;

    invoke-direct {p2, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$20;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1625
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_6
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1627
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1628
    invoke-static {p0, p2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    .line 1629
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WRITE_EXTERNAL_STORAGE...shouldShowRequestPermissionRationale : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "READ_EXTERNAL_STORAGE...shouldShowRequestPermissionRationale : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_7

    if-nez p2, :cond_7

    .line 1633
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showStorageInAppSettingTip()V

    goto :goto_2

    .line 1636
    :cond_7
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showPermissionTip()V

    :cond_8
    :goto_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1819
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->hideVirtualNavigationBar()V

    .line 1821
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1822
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mOnPause:Z

    if-eqz v1, :cond_0

    .line 1823
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    const-string v0, "gm_bridge"

    const-string v1, "mWebView.onResume()"

    .line 1824
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "gmbridge_onresume"

    .line 1825
    invoke-virtual {p0, v0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1826
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->mOnPause:Z

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 1783
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged, hasFocus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x13

    if-eqz p1, :cond_0

    .line 1787
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v1, :cond_0

    const/16 p1, 0x8

    .line 1788
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x1e

    if-eqz p1, :cond_1

    .line 1789
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_1

    const/16 p1, 0x1706

    .line 1790
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1797
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_2

    .line 1798
    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    .line 1799
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 1800
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    :cond_2
    :goto_0
    return-void
.end method

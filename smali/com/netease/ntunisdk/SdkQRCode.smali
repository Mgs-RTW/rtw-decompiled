.class public Lcom/netease/ntunisdk/SdkQRCode;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkQRCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/SdkQRCode$IndexCallback;
    }
.end annotation


# static fields
.field public static final DISABLE_QUICK_QR_PAY:Ljava/lang/String; = "DISABLE_QUICK_QR_PAY"

.field public static final ENABLE_POPUP_QR_PIC:Ljava/lang/String; = "ENABLE_POPUP_QR_PIC"

.field public static final ENABLE_UNISDK_PERMISSION_TIPS:Ljava/lang/String; = "ENABLE_UNISDK_PERMISSION_TIPS"

.field public static final ENABLE_UNISDK_PERMISSION_UI:Ljava/lang/String; = "ENABLE_UNISDK_PERMISSION_UI"

.field public static final HIDE_QRCODE_ALBUM_BTN:Ljava/lang/String; = "HIDE_QRCODE_ALBUM_BTN"

.field public static final HIDE_QRCODE_FLASH_BTN:Ljava/lang/String; = "HIDE_QRCODE_FLASH_BTN"

.field public static final IS_TEST:Z = false

.field private static final PERMISSIONS_REQUEST_CAMERA:I = 0x7995

.field private static final PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE:I = 0x7996

.field public static final PERMISSION_CAMERA:Ljava/lang/String; = "android.permission.CAMERA"

.field public static final QRCODE_SCAN_TIPS:Ljava/lang/String; = "QRCODE_SCAN_TIPS"

.field private static final QR_SDK_VERSION:Ljava/lang/String; = "1.4.2"

.field private static final QR_UNISDK_VERSION:Ljava/lang/String; = "1.4.2"

.field public static final QUICK_QR_CONFIG:Ljava/lang/String; = "QUICK_QR_CONFIG"

.field public static final REMOVE_JUMP_ALBUM:Ljava/lang/String; = "REMOVE_JUMP_ALBUM"

.field private static final REQUEST_CODE_CAPTURE_ACTIVITY:I = 0x67

.field private static final REQUEST_CODE_START_PICK_IMAGE:I = 0x68

.field public static final TAG:Ljava/lang/String; = "UniQR sdk"

.field private static final UNISDK_QRCODE:Ljava/lang/String; = "unisdk_qrcode"

.field public static final UNISDK_QRCODE_CAMERA_PERMISSION_TIPS:Ljava/lang/String; = "UNISDK_QRCODE_CAMERA_PERMISSION_TIPS"

.field public static final UNISDK_QRCODE_EXTERNAL_STORAGE_PERMISSION_REFUSE_TIPS:Ljava/lang/String; = "UNISDK_QRCODE_EXTERNAL_STORAGE_PERMISSION_REFUSE_TIPS"

.field public static final UNISDK_QRCODE_EXTERNAL_STORAGE_PERMISSION_TIPS:Ljava/lang/String; = "UNISDK_QRCODE_EXTERNAL_STORAGE_PERMISSION_TIPS"

.field public static final UNI_QRCODE_BACKGROUND_COLOR:Ljava/lang/String; = "UNI_QRCODE_BACKGROUND_COLOR"

.field public static final UNI_QRCODE_FOREGROUND_COLOR:Ljava/lang/String; = "UNI_QRCODE_FOREGROUND_COLOR"

.field public static final UNI_QRCODE_LEVEL:Ljava/lang/String; = "UNI_QRCODE_LEVEL"


# instance fields
.field private unisdkCodeScannerListener:Lcom/netease/ntunisdk/base/OnCodeScannerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 101
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    const-string v0, "INNER_MODE_SECOND_CHANNEL"

    .line 102
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->setPropInt(Ljava/lang/String;I)V

    const-string v0, "INNER_MODE_NO_PAY"

    .line 103
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/SdkQRCode;)Lcom/netease/ntunisdk/base/OnCodeScannerListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkQRCode;->unisdkCodeScannerListener:Lcom/netease/ntunisdk/base/OnCodeScannerListener;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/SdkQRCode;Lcom/netease/ntunisdk/base/OnCodeScannerListener;)Lcom/netease/ntunisdk/base/OnCodeScannerListener;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkQRCode;->unisdkCodeScannerListener:Lcom/netease/ntunisdk/base/OnCodeScannerListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/SdkQRCode;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->createQRCodeDone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netease/ntunisdk/SdkQRCode;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/netease/ntunisdk/SdkQRCode;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/netease/ntunisdk/SdkQRCode;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkQRCode;->handleCameraPermissionNotGranted()V

    return-void
.end method

.method static synthetic access$1400(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/SdkQRCode;->handleProcessResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->createQRCodeDone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->createQRCodeDone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->createQRCodeDone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->createQRCodeDone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/SdkQRCode;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->createQRCodeDone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->createQRCodeDone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->createQRCodeDone(Ljava/lang/String;)V

    return-void
.end method

.method private static byteArrayToHex([B)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 700
    fill-array-data v0, :array_0

    .line 702
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 704
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v5, p0, v3

    add-int/lit8 v6, v4, 0x1

    ushr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    .line 705
    aget-char v7, v0, v7

    aput-char v7, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 706
    aget-char v5, v0, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 709
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private doQrCodeConfigVal1(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "DISABLE_QUICK_QR_PAY"

    .line 523
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ENABLE_UNISDK_PERMISSION_TIPS"

    .line 525
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "UNISDK_QRCODE_CAMERA_PERMISSION_TIPS"

    .line 526
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "UNISDK_QRCODE_EXTERNAL_STORAGE_PERMISSION_TIPS"

    .line 527
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "UNISDK_QRCODE_EXTERNAL_STORAGE_PERMISSION_REFUSE_TIPS"

    .line 528
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "HIDE_QRCODE_FLASH_BTN"

    .line 531
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "HIDE_QRCODE_ALBUM_BTN"

    .line 532
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "REMOVE_JUMP_ALBUM"

    .line 534
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "QRCODE_SCAN_TIPS"

    .line 536
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ENABLE_POPUP_QR_PIC"

    .line 537
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ENABLE_UNISDK_PERMISSION_UI"

    .line 539
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private doQrCodeConfigVal2()V
    .locals 1

    .line 544
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DISABLE_QUICK_QR_PAY"

    .line 547
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doQrCodeConfigVal2Inner(Ljava/lang/String;)V

    const-string v0, "ENABLE_UNISDK_PERMISSION_TIPS"

    .line 549
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doQrCodeConfigVal2Inner(Ljava/lang/String;)V

    const-string v0, "UNISDK_QRCODE_CAMERA_PERMISSION_TIPS"

    .line 550
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doQrCodeConfigVal2Inner(Ljava/lang/String;)V

    const-string v0, "UNISDK_QRCODE_EXTERNAL_STORAGE_PERMISSION_TIPS"

    .line 551
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doQrCodeConfigVal2Inner(Ljava/lang/String;)V

    const-string v0, "UNISDK_QRCODE_EXTERNAL_STORAGE_PERMISSION_REFUSE_TIPS"

    .line 552
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doQrCodeConfigVal2Inner(Ljava/lang/String;)V

    const-string v0, "HIDE_QRCODE_FLASH_BTN"

    .line 555
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doQrCodeConfigVal2Inner(Ljava/lang/String;)V

    const-string v0, "HIDE_QRCODE_ALBUM_BTN"

    .line 556
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doQrCodeConfigVal2Inner(Ljava/lang/String;)V

    const-string v0, "QRCODE_SCAN_TIPS"

    .line 558
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doQrCodeConfigVal2Inner(Ljava/lang/String;)V

    const-string v0, "ENABLE_POPUP_QR_PIC"

    .line 559
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doQrCodeConfigVal2Inner(Ljava/lang/String;)V

    const-string v0, "ENABLE_UNISDK_PERMISSION_UI"

    .line 561
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkQRCode;->doQrCodeConfigVal2Inner(Ljava/lang/String;)V

    return-void
.end method

.method private doQrCodeConfigVal2Inner(Ljava/lang/String;)V
    .locals 2

    .line 565
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 567
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static getSignSrc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v1, "://"

    .line 678
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    .line 679
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 680
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 682
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pathQs:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UniQR sdk"

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleCameraPermissionNotGranted()V
    .locals 5

    .line 480
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "ENABLE_UNISDK_PERMISSION_UI"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 481
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/SdkQRCode;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 482
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniQR sdk"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    const-string v4, "ntunisdk_scan_camera_tips"

    invoke-static {v1, v4}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 488
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v3, "uniSDKPermissionDenied"

    .line 489
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "permissionName"

    const-string v3, "Manifest.permission.CAMERA"

    .line 490
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    const-string v3, "unisdk_qrcode"

    .line 491
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkQRCode;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCameraPermissionNotGranted exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x4

    const-string v1, ""

    .line 496
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkQRCode;->codeScannerDone(ILjava/lang/String;)V

    return-void
.end method

.method private handleProcessResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryIndexUrl res:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniQR sdk"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u83b7\u53d6index\u5931\u8d25"

    .line 624
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 627
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    .line 629
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    if-ne v3, v2, :cond_2

    const-string p2, "data"

    const-string v2, ""

    .line 631
    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 632
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkQRCode;->stringMD5([B)Ljava/lang/String;

    move-result-object v0

    .line 633
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 634
    new-instance p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 635
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "queryIndexUrl data:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "methodId"

    const-string v2, "unisdkqrcode"

    .line 639
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "params"

    .line 640
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 641
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "index\u6821\u9a8c\u4e0d\u901a\u8fc7"

    .line 643
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "err"

    .line 646
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkQRCode;->unisdkCodeScannerListener:Lcom/netease/ntunisdk/base/OnCodeScannerListener;

    if-eqz p1, :cond_3

    .line 651
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkQRCode;->unisdkCodeScannerListener:Lcom/netease/ntunisdk/base/OnCodeScannerListener;

    const/16 v0, 0xc

    invoke-interface {p1, v0, p2}, Lcom/netease/ntunisdk/base/OnCodeScannerListener;->codeScannerFinish(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 655
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 656
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handle query index exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private initConfig()V
    .locals 3

    .line 163
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "LANGUAGE_CODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/netease/ntunisdk/langutil/LanguageUtil;->setLanguageCode(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "SCR_ORIENTATION"

    .line 166
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/SdkQRCode;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 168
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/SdkQRCode;->setPropInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private requestAlbumThenExecute()V
    .locals 8

    .line 323
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/zxing/utils/Util;->isMediaPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkQRCode;->startPickLocalImage()V

    goto :goto_0

    .line 326
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

    .line 328
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_QRCODE_EXTERNAL_STORAGE_PERMISSION_TIPS"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPermission,UNISDK_QRCODE_EXTERNAL_STORAGE_PERMISSION_TIPS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniQR sdk"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    const-string v1, "ntunisdk_scan_request_external_storage"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v2, v0

    .line 333
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    const-string v1, "ntunisdk_scan_camera_permission_sure"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 334
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    const-string v1, "ntunisdk_scan_camera_permission_cancel"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 335
    new-instance v1, Lcom/netease/ntunisdk/UniAlertDialog;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/UniAlertDialog;-><init>(Landroid/app/Activity;)V

    new-instance v5, Lcom/netease/ntunisdk/SdkQRCode$4;

    invoke-direct {v5, p0}, Lcom/netease/ntunisdk/SdkQRCode$4;-><init>(Lcom/netease/ntunisdk/SdkQRCode;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/netease/ntunisdk/UniAlertDialog;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x7996

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/zxing/utils/Util;->requestMediaPermission(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method private requestCameraThenExecute()V
    .locals 8

    .line 424
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/zxing/utils/Util;->selfPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "UniQR sdk"

    if-eqz v0, :cond_0

    const-string v0, "have granted permissions"

    .line 425
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkQRCode;->startCaptureActivity()V

    goto/16 :goto_1

    .line 428
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "ENABLE_UNISDK_PERMISSION_TIPS"

    invoke-interface {v0, v4, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 430
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_QRCODE_CAMERA_PERMISSION_TIPS"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPermission, UNISDK_QRCODE_CAMERA_PERMISSION_TIPS:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    const-string v1, "ntunisdk_scan_need_camera_permission"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v2, v0

    .line 436
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    const-string v1, "ntunisdk_scan_camera_permission_sure"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 437
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    const-string v1, "ntunisdk_scan_camera_permission_cancel"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 438
    new-instance v1, Lcom/netease/ntunisdk/UniAlertDialog;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/UniAlertDialog;-><init>(Landroid/app/Activity;)V

    new-instance v5, Lcom/netease/ntunisdk/SdkQRCode$6;

    invoke-direct {v5, p0}, Lcom/netease/ntunisdk/SdkQRCode$6;-><init>(Lcom/netease/ntunisdk/SdkQRCode;)V

    new-instance v6, Lcom/netease/ntunisdk/SdkQRCode$7;

    invoke-direct {v6, p0}, Lcom/netease/ntunisdk/SdkQRCode$7;-><init>(Lcom/netease/ntunisdk/SdkQRCode;)V

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/netease/ntunisdk/UniAlertDialog;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_1

    .line 450
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-array v2, v4, [Ljava/lang/String;

    aput-object v1, v2, v3

    const/16 v1, 0x7995

    invoke-static {v0, v2, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method private restoreIndex(Ljava/lang/String;)V
    .locals 6

    .line 572
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_JF_GAS3_URL"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "UniQR sdk"

    if-nez v1, :cond_2

    .line 575
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "index"

    .line 577
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "indexJson JSONException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 582
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    .line 583
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "query_index"

    .line 584
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v0, "/query_index"

    .line 586
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "post json index, queryIndexUrl:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v0

    const-string v4, "POST"

    .line 592
    iput-object v4, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    .line 593
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    const/4 v3, 0x1

    .line 594
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    const/4 v3, 0x0

    .line 595
    iput v3, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->leftRetry:I

    .line 596
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setBody(Ljava/lang/String;)V

    const-string v3, "UNISD_JF_GAS3_QUERY_INDEX"

    .line 597
    iput-object v3, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->transParam:Ljava/lang/String;

    .line 598
    new-instance v3, Lcom/netease/ntunisdk/SdkQRCode$IndexCallback;

    invoke-direct {v3, p0, p1}, Lcom/netease/ntunisdk/SdkQRCode$IndexCallback;-><init>(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->callback:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    .line 600
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v3, "JF_LOG_KEY"

    invoke-interface {p1, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 601
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 602
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 605
    :try_start_1
    iget-object v4, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    iget-object v5, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/netease/ntunisdk/SdkQRCode;->getSignSrc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/ntunisdk/base/utils/Crypto;->hmacSHA256Signature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "X-Client-Sign"

    .line 606
    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hmacSHA256Signature exception:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :goto_2
    invoke-virtual {v0, v3}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setHeaders(Ljava/util/Map;)V

    goto :goto_3

    :cond_1
    const-string p1, "JF_CLIENT_KEY empty"

    .line 612
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string p1, "UniSDK"

    .line 614
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    goto :goto_4

    :cond_2
    const-string p1, "UNISDK_JF_GAS3_URL null"

    .line 616
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private startPickLocalImage()V
    .locals 5

    .line 349
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 350
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "image/*"

    const-string v3, "android.intent.action.GET_CONTENT"

    const/16 v4, 0x13

    if-ge v1, v4, :cond_0

    .line 351
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 357
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 358
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x68

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startScanTheImage(Ljava/lang/String;)V
    .locals 1

    .line 367
    new-instance v0, Lcom/netease/ntunisdk/SdkQRCode$5;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkQRCode$5;-><init>(Lcom/netease/ntunisdk/SdkQRCode;)V

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/zxing/utils/Util;->scanningImage(Ljava/lang/String;Lcom/netease/ntunisdk/zxing/utils/Util$ScanImageCallback;)V

    return-void
.end method

.method private static stringMD5([B)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "MD5"

    .line 689
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 690
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 691
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 692
    invoke-static {p0}, Lcom/netease/ntunisdk/SdkQRCode;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private unisdkCodeScannerDone(ILjava/lang/String;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode;->unisdkCodeScannerListener:Lcom/netease/ntunisdk/base/OnCodeScannerListener;

    const-string v1, "UniQR sdk"

    if-nez v0, :cond_0

    const-string p1, "unisdkCodeScannerListener not set"

    .line 116
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "unisdkCodeScannerDone"

    .line 118
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 120
    new-instance v1, Lcom/netease/ntunisdk/SdkQRCode$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/SdkQRCode$1;-><init>(Lcom/netease/ntunisdk/SdkQRCode;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method protected codeScannerDone(ILjava/lang/String;)V
    .locals 2

    .line 137
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "UniQR sdk"

    if-nez v0, :cond_0

    const-string v0, "unisdkqrcode:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unisdkqrcode\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xd

    .line 139
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->restoreIndex(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkQRCode;->unisdkCodeScannerListener:Lcom/netease/ntunisdk/base/OnCodeScannerListener;

    if-nez v0, :cond_1

    const-string v0, "codeScannerDone"

    .line 143
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-super {p0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->codeScannerDone(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "channel codeScannerDone"

    .line 146
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/SdkQRCode;->unisdkCodeScannerDone(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public createQRCode(Ljava/lang/String;IILjava/lang/String;)V
    .locals 10

    .line 215
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 216
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->createQRCodeDone(Ljava/lang/String;)V

    return-void

    .line 219
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNI_QRCODE_LEVEL"

    const-string v2, "Q"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 220
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/ntunisdk/SdkQRCode$2;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/netease/ntunisdk/SdkQRCode$2;-><init>(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public createQRCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 243
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    move-object v9, p0

    .line 244
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkQRCode;->createQRCodeDone(Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v9, p0

    .line 247
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNI_QRCODE_LEVEL"

    const-string v2, "Q"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 248
    new-instance v0, Ljava/lang/Thread;

    new-instance v10, Lcom/netease/ntunisdk/SdkQRCode$3;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/netease/ntunisdk/SdkQRCode$3;-><init>(Lcom/netease/ntunisdk/SdkQRCode;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected doSepcialConfigVal(Lorg/json/JSONObject;)V
    .locals 0

    .line 511
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->doQrCodeConfigVal1(Lorg/json/JSONObject;)V

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 4

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFunc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniQR sdk"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 717
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "setLanguage"

    .line 718
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "language"

    .line 719
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "LANGUAGE_CODE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 720
    invoke-static {p1}, Lcom/netease/ntunisdk/langutil/LanguageUtil;->setLanguageCode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "unisdk_qrcode"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.4.2"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.4.2"

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 2

    const-string v0, "UniQR sdk"

    const-string v1, "init SdkQRCode"

    .line 154
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkQRCode;->initConfig()V

    const/4 v0, 0x0

    .line 156
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    .line 158
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkQRCode;->doQrCodeConfigVal2()V

    return-void
.end method

.method public login()V
    .locals 0

    return-void
.end method

.method public logout()V
    .locals 0

    return-void
.end method

.method public openManager()V
    .locals 0

    return-void
.end method

.method public scannerQRCode(Ljava/lang/String;)V
    .locals 5

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scannnerQRCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniQR sdk"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ""

    const-string v3, "UNISDK_QRCODE_FILE"

    if-eqz v0, :cond_0

    .line 280
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropStr UNISDK_QRCODE_FILE:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "open camera scanner..."

    .line 286
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkQRCode;->requestCameraThenExecute()V

    goto :goto_0

    :cond_1
    const-string v0, "read pic scanner..."

    .line 289
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "unisdk:"

    .line 290
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "recognize"

    .line 293
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkQRCode;->requestAlbumThenExecute()V

    goto :goto_0

    .line 296
    :cond_2
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->startScanTheImage(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_3
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->startScanTheImage(Ljava/lang/String;)V

    .line 304
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sdkOnActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "UniQR sdk"

    const-string v1, "sdkOnActivityResult..."

    .line 382
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const/16 v2, 0xa

    const/16 v3, 0x67

    if-ne v3, p1, :cond_6

    const/16 p1, 0xa1

    const/4 v3, 0x0

    if-ne p2, p1, :cond_3

    const-string p1, "qr_scan_result"

    .line 385
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 387
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 388
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 389
    invoke-virtual {p0, v3, p1}, Lcom/netease/ntunisdk/SdkQRCode;->codeScannerDone(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string p3, "no_permission"

    .line 391
    invoke-virtual {p2, p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x1

    if-ne p3, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    const/4 v2, 0x4

    .line 392
    :cond_2
    invoke-virtual {p0, v2, p1}, Lcom/netease/ntunisdk/SdkQRCode;->codeScannerDone(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 p1, 0xa2

    if-ne p2, p1, :cond_5

    const-string p1, "qr_album_result"

    .line 395
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 397
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 399
    invoke-virtual {p0, v3, p1}, Lcom/netease/ntunisdk/SdkQRCode;->codeScannerDone(ILjava/lang/String;)V

    goto :goto_1

    .line 401
    :cond_4
    invoke-virtual {p0, v2, v1}, Lcom/netease/ntunisdk/SdkQRCode;->codeScannerDone(ILjava/lang/String;)V

    goto :goto_1

    .line 404
    :cond_5
    invoke-virtual {p0, v2, v1}, Lcom/netease/ntunisdk/SdkQRCode;->codeScannerDone(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    const/16 v3, 0x68

    if-ne v3, p1, :cond_9

    const-string p1, "pick_image_result"

    .line 407
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_7

    if-eqz p3, :cond_7

    .line 409
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 410
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 411
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/zxing/utils/Util;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 413
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 414
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startScanTheImage:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkQRCode;->startScanTheImage(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string p1, "not choose pic"

    .line 417
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0, v2, v1}, Lcom/netease/ntunisdk/SdkQRCode;->codeScannerDone(ILjava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public sdkOnRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 456
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sdkOnRequestPermissionsResult, requestCode = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UniQR sdk"

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x7995

    const/4 v1, 0x0

    if-eq p1, p2, :cond_2

    const/16 p2, 0x7996

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    aget p1, p3, v1

    if-nez p1, :cond_1

    .line 470
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkQRCode;->startPickLocalImage()V

    goto :goto_0

    .line 472
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    iget-object p2, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    const-string p3, "ntunisdk_scan_storage_tips"

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/zxing/utils/Util;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 460
    :cond_2
    array-length p1, p3

    if-lez p1, :cond_3

    aget p1, p3, v1

    if-nez p1, :cond_3

    const-string p1, "camera permission was granted"

    .line 461
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkQRCode;->startCaptureActivity()V

    goto :goto_0

    .line 464
    :cond_3
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkQRCode;->handleCameraPermissionNotGranted()V

    :goto_0
    return-void
.end method

.method public setUniSDKCodeScannerListener(Lcom/netease/ntunisdk/base/OnCodeScannerListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkQRCode;->unisdkCodeScannerListener:Lcom/netease/ntunisdk/base/OnCodeScannerListener;

    return-void
.end method

.method public startCaptureActivity()V
    .locals 5

    const-string v0, "UniQR sdk"

    const-string v1, "startCaptureActivity"

    .line 309
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    const-class v3, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const-string v3, "SCR_ORIENTATION"

    .line 312
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/SdkQRCode;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "REMOVE_JUMP_ALBUM"

    .line 313
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/SdkQRCode;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    :try_start_0
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkQRCode;->myCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0x67

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCaptureActivity exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    const-string v1, ""

    .line 318
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkQRCode;->codeScannerDone(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method

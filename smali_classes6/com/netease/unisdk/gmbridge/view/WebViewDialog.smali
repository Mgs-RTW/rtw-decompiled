.class public Lcom/netease/unisdk/gmbridge/view/WebViewDialog;
.super Lcom/netease/unisdk/gmbridge/view/BaseDialog;
.source "WebViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "gm_bridge WebViewDialog"


# instance fields
.field private mBatteryInfo:Lcom/netease/unisdk/gmbridge/device/BatteryInfo;

.field private mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

.field private mCameraImgPath:Ljava/lang/String;

.field private mContentView:Landroid/widget/RelativeLayout;

.field private mLayoutId:I

.field private mRemoteUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 62
    iget p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenWidth:I

    iget v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenHeight:I

    if-le p1, v0, :cond_0

    .line 63
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v0, "uni_gm_web_dialog_landscape"

    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mLayoutId:I

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v0, "uni_gm_web_dialog_portrait"

    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mLayoutId:I

    .line 67
    :goto_0
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 68
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Landroid/webkit/WebView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;Ljava/lang/String;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->interceptUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->pick()V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->capture()V

    return-void
.end method

.method static synthetic access$402(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mCameraImgPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    return-object p0
.end method

.method static synthetic access$502(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;)Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    return-object p1
.end method

.method static synthetic access$602(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;Lcom/netease/unisdk/gmbridge/device/BatteryInfo;)Lcom/netease/unisdk/gmbridge/device/BatteryInfo;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryInfo:Lcom/netease/unisdk/gmbridge/device/BatteryInfo;

    return-object p1
.end method

.method private capture()V
    .locals 7

    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 342
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->getImgSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mCameraImgPath:Ljava/lang/String;

    const-string v1, "gm_bridge WebViewDialog"

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCameraImgPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mCameraImgPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mCameraImgPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 348
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mCameraImgPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".gmbridge.fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gm_bridge WebViewDialog"

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 353
    :try_start_0
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "gm_bridge WebViewDialog"

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUriForFile Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    if-nez v2, :cond_1

    .line 359
    :try_start_1
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v4, "gm_bridge WebViewDialog"

    .line 361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fromFile Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    const-string v2, "output"

    .line 365
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 366
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x144

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 367
    sput-object v3, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private getContentHeight()I
    .locals 2

    .line 183
    sget v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->heightPercent:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 184
    iget v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenHeight:I

    int-to-float v0, v0

    sget v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->heightPercent:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    .line 186
    :cond_0
    iget v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenHeight:I

    return v0
.end method

.method private getContentWidth()I
    .locals 2

    .line 175
    sget v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->widthPercent:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 176
    iget v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenWidth:I

    int-to-float v0, v0

    sget v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->widthPercent:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    .line 178
    :cond_0
    iget v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenWidth:I

    return v0
.end method

.method private initWebView()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 146
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 148
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 149
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 150
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 151
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 152
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 153
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$6;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$6;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 164
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$7;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$7;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private interceptUrl(Ljava/lang/String;)Z
    .locals 6

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "csa/upload/image"

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mRemoteUrl:Ljava/lang/String;

    .line 236
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 237
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->showImgPickDialog(Z)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "csa/info"

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "callback"

    .line 240
    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gm_bridge WebViewDialog"

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/device/DeviceUtil;->getDeviceInfo(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/device/DeviceInfo;

    move-result-object v0

    .line 243
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryInfo:Lcom/netease/unisdk/gmbridge/device/BatteryInfo;

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryInfo:Lcom/netease/unisdk/gmbridge/device/BatteryInfo;

    iget-object v2, v2, Lcom/netease/unisdk/gmbridge/device/BatteryInfo;->batteryLevel:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->batteryLevel:Ljava/lang/String;

    .line 245
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryInfo:Lcom/netease/unisdk/gmbridge/device/BatteryInfo;

    iget-object v2, v2, Lcom/netease/unisdk/gmbridge/device/BatteryInfo;->batteryStatus:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->batteryStatus:Ljava/lang/String;

    .line 247
    :cond_2
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {p0, v0, p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "csa/start_record"

    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "callback"

    .line 250
    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 251
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    move-result-object v0

    new-instance v2, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$8;

    invoke-direct {v2, p0, p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$8;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->startRecord(Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;)V

    goto/16 :goto_1

    :cond_4
    const-string v0, "csa/stop_record"

    .line 257
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 258
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->stopRecord()V

    goto/16 :goto_1

    :cond_5
    const-string v0, "csa/cancel_record"

    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 260
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->cancelRecord()V

    goto/16 :goto_1

    :cond_6
    const-string v0, "csa/play_record"

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "url"

    .line 262
    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "name"

    .line 263
    invoke-static {p1, v2}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "gm_bridge WebViewDialog"

    const-string v3, "playUrl = %s"

    const/4 v4, 0x1

    .line 264
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v5}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "gm_bridge WebViewDialog"

    const-string v3, "name = %s"

    .line 265
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->playback(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v0, "csa/stop_play"

    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 268
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->stopPlayback()V

    goto :goto_1

    :cond_8
    const-string v0, "csa/set_window_size"

    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    const-string v2, "w"

    .line 273
    invoke-static {p1, v2}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    :try_start_1
    const-string v3, "h"

    .line 277
    invoke-static {p1, v3}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v3

    :catch_1
    const-string v3, "align"

    .line 280
    invoke-static {p1, v3}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 281
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mDialogView:Landroid/view/View;

    iget v4, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v2, v4

    iget v4, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v0, v4

    invoke-direct {p0, v3, v2, v0, p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->updateViewSizeAndPosition(Landroid/view/View;IILjava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v0, "csa/play_video"

    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "link"

    .line 283
    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "video/mp4"

    .line 287
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 289
    sput-object p1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    :cond_a
    :goto_1
    return v1
.end method

.method private isIntentAvailable(Landroid/content/Intent;)Z
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 301
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 302
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private pick()V
    .locals 3

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 373
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x143

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x0

    .line 375
    sput-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    return-void
.end method

.method private registerBatteryReceiver()V
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 421
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    .line 423
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    new-instance v1, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$11;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$11;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-direct {v0, v1}, Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;-><init>(Lcom/netease/unisdk/gmbridge/receiver/IBatteryChangeListener;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    .line 435
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setBackground()V
    .locals 2

    .line 219
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->bgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContentView:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->bgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 221
    :cond_0
    sget v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->bgColor:I

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContentView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContentView:Landroid/widget/RelativeLayout;

    const-string v1, "#e0000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private showImgPickDialog(Z)V
    .locals 5

    .line 306
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v2, "uni_gm_img_pick_dlg_title"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 308
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v3, "uni_gm_img_pick_dlg_items"

    invoke-static {v2, v3}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getArrayId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 311
    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 312
    aget-object v4, v1, v3

    aput-object v4, p1, v3

    .line 313
    aget-object v1, v1, v2

    aput-object v1, p1, v2

    goto :goto_0

    .line 315
    :cond_0
    new-array p1, v2, [Ljava/lang/CharSequence;

    .line 316
    aget-object v1, v1, v3

    aput-object v1, p1, v3

    .line 318
    :goto_0
    new-instance v1, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$9;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$9;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 337
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private startUpload(Ljava/lang/Object;)V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mRemoteUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mRemoteUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->obtain(Ljava/lang/String;)Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;

    move-result-object v0

    const-string v1, "gm_bridge WebViewDialog"

    .line 391
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uploading"

    .line 393
    iget-object v2, v0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$10;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$10;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-static {v1, v0, p1, v2}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->uploadImg(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;Ljava/lang/Object;Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;)V

    return-void
.end method

.method private updateViewSizeAndPosition(Landroid/view/View;IILjava/lang/String;)V
    .locals 2

    .line 191
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 192
    iget v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenHeight:I

    sub-int/2addr v1, p3

    div-int/lit8 v1, v1, 0x2

    .line 193
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 194
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const-string p3, "left"

    .line 195
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 196
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 197
    iget p3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenWidth:I

    sub-int/2addr p3, p2

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    const-string p3, "right"

    .line 198
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 199
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 200
    iget p3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenWidth:I

    sub-int/2addr p3, p2

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 202
    :cond_1
    iget p3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenWidth:I

    sub-int/2addr p3, p2

    div-int/lit8 p3, p3, 0x2

    .line 203
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 204
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 206
    :goto_0
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const-string v0, "gm_bridge WebViewDialog"

    const-string v1, "destroy"

    .line 441
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 444
    iput-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 449
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 452
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 453
    iput-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->stopRecord()V

    .line 456
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->stopPlayback()V

    .line 457
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sPageCloseListener:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;

    if-eqz v0, :cond_3

    .line 458
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sPageCloseListener:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;

    invoke-interface {v0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;->onClosed()V

    .line 459
    sput-object v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sPageCloseListener:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;

    .line 461
    :cond_3
    sput-object v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    .line 462
    invoke-super {p0}, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->destroy()V

    return-void
.end method

.method protected getDialogHeight()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getDialogWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected initDialogView()Landroid/view/View;
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v3, "content_view"

    invoke-static {v1, v3}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContentView:Landroid/widget/RelativeLayout;

    .line 94
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->getContentWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->getContentHeight()I

    move-result v3

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->updateViewSizeAndPosition(Landroid/view/View;IILjava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v2, "close"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$2;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$2;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v2, "back"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$3;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$3;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v2, "forward"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$4;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$4;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v2, "refresh"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$5;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$5;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v2, "web"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    .line 130
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->initWebView()V

    return-object v0
.end method

.method public jsCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "javascript: %s( \'%s\' )"

    const/4 v1, 0x2

    .line 408
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gm_bridge WebViewDialog"

    const-string v1, "jsCallback url = %s"

    .line 409
    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-static {v0, v1, p2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    if-eqz p2, :cond_0

    .line 411
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCaptureResult()V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mCameraImgPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->startUpload(Ljava/lang/Object;)V

    return-void
.end method

.method public onPickResult(Landroid/net/Uri;)V
    .locals 0

    .line 383
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->startUpload(Ljava/lang/Object;)V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->show()V

    .line 212
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->setBackground()V

    .line 213
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 215
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->registerBatteryReceiver()V

    return-void
.end method

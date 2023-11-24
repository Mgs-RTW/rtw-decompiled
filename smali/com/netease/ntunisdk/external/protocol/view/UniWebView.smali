.class public Lcom/netease/ntunisdk/external/protocol/view/UniWebView;
.super Landroid/webkit/WebView;
.source "UniWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/external/protocol/view/UniWebView$OnShowListener;
    }
.end annotation


# static fields
.field public static final CB_ACTION:Ljava/lang/String; = "func"

.field public static final CB_NATIVE2H5:Ljava/lang/String; = "callback"

.field public static final CB_PARAMS:Ljava/lang/String; = "params"

.field private static final NTWKJSBridgeJS:Ljava/lang/String; = "ProtocolJSBridge.js"

.field private static final TAG:Ljava/lang/String; = "Protocol UniWebView"

.field public static final URLPROXY_PREFIX:Ljava/lang/String; = "nativerequest/"

.field private static mLocalJS:Ljava/lang/String; = ""


# instance fields
.field private mBaseUrl:Ljava/lang/String;

.field private mErrorUrl:Ljava/lang/String;

.field private mOnShowListener:Lcom/netease/ntunisdk/external/protocol/view/UniWebView$OnShowListener;

.field private mTimer:Ljava/util/Timer;

.field private mWebViewBridge:Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;

.field private myCtx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->myCtx:Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->initWebView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->myCtx:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->initWebView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->myCtx:Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->initWebView()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mErrorUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mErrorUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->resetTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mBaseUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Lcom/netease/ntunisdk/external/protocol/view/UniWebView$OnShowListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mOnShowListener:Lcom/netease/ntunisdk/external/protocol/view/UniWebView$OnShowListener;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mLocalJS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    sput-object p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mLocalJS:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->getJS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->runCallback(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private getActivityFromView(Landroid/view/View;)Landroid/app/Activity;
    .locals 1

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 421
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 422
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 423
    check-cast p1, Landroid/app/Activity;

    return-object p1

    .line 425
    :cond_0
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static declared-synchronized getJS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    monitor-enter v0

    :try_start_0
    const-string v1, "Protocol UniWebView"

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJS, fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    .line 100
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    :try_start_2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v2, 0x800

    :try_start_3
    new-array v2, v2, [B

    .line 104
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 105
    invoke-virtual {p1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 107
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 113
    :try_start_4
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catch_0
    move-exception p1

    .line 115
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_1
    if-eqz p0, :cond_1

    .line 120
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catch_1
    move-exception p0

    .line 122
    :try_start_7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 107
    :cond_1
    :goto_2
    monitor-exit v0

    return-object v2

    :catch_2
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_6

    :catch_3
    move-exception v2

    move-object p1, v1

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object p1, v1

    move-object v1, p0

    move-object p0, p1

    goto :goto_6

    :catch_4
    move-exception v2

    move-object p0, v1

    move-object p1, p0

    .line 109
    :goto_3
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz p1, :cond_2

    .line 113
    :try_start_9
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catch_5
    move-exception p1

    .line 115
    :try_start_a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_2
    :goto_4
    if-eqz p0, :cond_3

    .line 120
    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_5

    :catch_6
    move-exception p0

    .line 122
    :try_start_c
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 126
    :cond_3
    :goto_5
    monitor-exit v0

    return-object v1

    :catchall_2
    move-exception v1

    :goto_6
    if-eqz p1, :cond_4

    .line 113
    :try_start_d
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_7

    :catch_7
    move-exception p1

    .line 115
    :try_start_e
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :cond_4
    :goto_7
    if-eqz p0, :cond_5

    .line 120
    :try_start_f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_8

    :catch_8
    move-exception p0

    .line 122
    :try_start_10
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 125
    :cond_5
    :goto_8
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catchall_3
    move-exception p0

    monitor-exit v0

    goto :goto_a

    :goto_9
    throw p0

    :goto_a
    goto :goto_9
.end method

.method private initWebView()V
    .locals 2

    .line 160
    sget-object v0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mLocalJS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ProtocolJSBridge.js"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->getJS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mLocalJS:Ljava/lang/String;

    .line 163
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;

    invoke-direct {v0}, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mWebViewBridge:Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;

    .line 164
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->setWebViewSetting()V

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->setDrawingCacheEnabled(Z)V

    .line 166
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;-><init>(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 355
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$2;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$2;-><init>(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const-string v0, "#000000"

    .line 369
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->setBackgroundColor(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 370
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 371
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->requestFocus()Z

    .line 372
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mWebViewBridge:Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;->init(Landroid/webkit/WebView;)V

    return-void
.end method

.method public static preload(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ProtocolJSBridge.js"

    .line 85
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->getJS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mLocalJS:Ljava/lang/String;

    return-void
.end method

.method private resetTimer()V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 557
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 558
    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private runCallback(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mWebViewBridge:Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;->getDefaultCallback()Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;->callback(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Protocol UniWebView"

    const-string p2, "UniWebViewCallback null"

    .line 485
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setUserAgent(Landroid/webkit/WebSettings;)V
    .locals 3

    .line 411
    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Unisdk/Mobile"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "Protocol UniWebView"

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user_agent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private setWebViewSetting()V
    .locals 5

    .line 376
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 377
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 378
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 379
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 380
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v1, 0x0

    .line 381
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 382
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 383
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 384
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 385
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 387
    :cond_0
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->setUserAgent(Landroid/webkit/WebSettings;)V

    .line 388
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 389
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 393
    :cond_1
    :try_start_0
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 394
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_2

    .line 395
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    goto :goto_0

    .line 397
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_3

    .line 398
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 403
    :cond_3
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_4

    const-string v0, "searchBoxJavaBridge_"

    .line 404
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    .line 405
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 406
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .line 460
    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 0

    .line 550
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 551
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->resetTimer()V

    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluateJavascript method:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Protocol UniWebView"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_1

    .line 445
    new-instance p1, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$3;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$3;-><init>(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)V

    invoke-super {p0, v0, p1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 452
    :cond_1
    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "evaluateJavascript method null"

    .line 455
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public goBack()V
    .locals 2

    const-string v0, "Protocol UniWebView"

    const-string v1, "goback----"

    .line 464
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public handleNativeNotify(Ljava/lang/String;)V
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.handleNativeNotify&&window.handleNativeNotify("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNativeNotify js\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Protocol UniWebView"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 152
    invoke-super {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public httpGet(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/io/InputStream;
    .locals 4

    .line 491
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    .line 492
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x0

    .line 493
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 494
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v2, "accept"

    const-string v3, "*/*"

    .line 495
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "connection"

    const-string v3, "Keep-Alive"

    .line 496
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3a98

    .line 497
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x7530

    .line 498
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "get"

    .line 500
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "GET"

    .line 501
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "POST"

    .line 503
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz p3, :cond_1

    .line 506
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 507
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 508
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "UTF-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 509
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 510
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 514
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 515
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 517
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u8bf7\u6c42\u63d0\u4ea4\u5931\u8d25:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Protocol UniWebView"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public loadingAlarm(Ljava/lang/String;)V
    .locals 4

    .line 523
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mTimer:Ljava/util/Timer;

    .line 524
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;-><init>(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 131
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    const-string v0, "{\"name\": \"onScreenUnlock\"}"

    .line 134
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->handleNativeNotify(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    const-string v0, "{\"name\": \"onScreenLock\"}"

    .line 139
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->handleNativeNotify(Ljava/lang/String;)V

    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mBaseUrl:Ljava/lang/String;

    return-void
.end method

.method public setOnShowListener(Lcom/netease/ntunisdk/external/protocol/view/UniWebView$OnShowListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mOnShowListener:Lcom/netease/ntunisdk/external/protocol/view/UniWebView$OnShowListener;

    return-void
.end method

.method public setWebBridgeCallback(Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;)V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->mWebViewBridge:Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;->addWebViewCallback(Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;)V

    :cond_0
    return-void
.end method

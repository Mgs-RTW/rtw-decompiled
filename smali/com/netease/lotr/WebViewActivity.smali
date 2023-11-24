.class public Lcom/netease/lotr/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lotr/WebViewActivity$ButtonHandler;
    }
.end annotation


# static fields
.field private static final FILECHOOSER_RESULTCODE:I = 0x1

.field private static final REQUEST_SELECT_FILE:I = 0x64

.field public static TAG:Ljava/lang/String; = "WebViewActivity"

.field static instance:Lcom/netease/lotr/WebViewActivity;

.field public static mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static sNeoxClient:Landroid/app/Activity;

.field public static uploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backwardBtn:Landroid/widget/ImageButton;

.field private closeBtn:Landroid/widget/ImageButton;

.field private forwardBtn:Landroid/widget/ImageButton;

.field private refreshBtn:Landroid/widget/ImageButton;

.field private url:Ljava/lang/String;

.field private webiew:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static _didFailLoading(ILjava/lang/String;)V
    .locals 0

    .line 195
    invoke-static {p0, p1}, Lcom/netease/lotr/WebViewActivity;->didFailLoading(ILjava/lang/String;)V

    return-void
.end method

.method public static _didFinishLoading(ILjava/lang/String;)V
    .locals 0

    .line 189
    invoke-static {p0, p1}, Lcom/netease/lotr/WebViewActivity;->didFinishLoading(ILjava/lang/String;)V

    return-void
.end method

.method public static _onJsCallback(ILjava/lang/String;)V
    .locals 0

    .line 201
    invoke-static {p0, p1}, Lcom/netease/lotr/WebViewActivity;->onJsCallback(ILjava/lang/String;)V

    return-void
.end method

.method public static _shouldStartLoading(ILjava/lang/String;)Z
    .locals 0

    .line 183
    invoke-static {p0, p1}, Lcom/netease/lotr/WebViewActivity;->shouldStartLoading(ILjava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic access$000(Lcom/netease/lotr/WebViewActivity;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/netease/lotr/WebViewActivity;->onBtnBackwardClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/lotr/WebViewActivity;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/netease/lotr/WebViewActivity;->onBtnCloseClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/lotr/WebViewActivity;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/netease/lotr/WebViewActivity;->onBtnRefreshClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/lotr/WebViewActivity;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/netease/lotr/WebViewActivity;->onBtnForwardClicked()V

    return-void
.end method

.method private static native didFailLoading(ILjava/lang/String;)V
.end method

.method private static native didFinishLoading(ILjava/lang/String;)V
.end method

.method private initView()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const v0, 0x7f070051

    .line 342
    invoke-virtual {p0, v0}, Lcom/netease/lotr/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    .line 343
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 344
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    goto :goto_0

    .line 347
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 353
    :goto_0
    iget-object v0, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 354
    iget-object v0, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 356
    iget-object v0, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 357
    iget-object v0, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 358
    iget-object v0, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 359
    iget-object v0, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 364
    iget-object v0, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 365
    iget-object v0, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 369
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "removeJavascriptInterface"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 370
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "searchBoxJavaBridge_"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 372
    :catch_0
    sget-object v0, Lcom/netease/lotr/WebViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "This API level do not support `removeJavascriptInterface`"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_1
    iget-object v0, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    new-instance v1, Lcom/netease/lotr/WebViewActivityClient;

    invoke-direct {v1}, Lcom/netease/lotr/WebViewActivityClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 376
    iget-object v0, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    new-instance v1, Lcom/netease/lotr/WebViewWebChromeClient;

    invoke-direct {v1}, Lcom/netease/lotr/WebViewWebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const v0, 0x7f070011

    .line 379
    invoke-virtual {p0, v0}, Lcom/netease/lotr/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netease/lotr/WebViewActivity;->backwardBtn:Landroid/widget/ImageButton;

    const v0, 0x7f070015

    .line 380
    invoke-virtual {p0, v0}, Lcom/netease/lotr/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netease/lotr/WebViewActivity;->forwardBtn:Landroid/widget/ImageButton;

    const v0, 0x7f070016

    .line 381
    invoke-virtual {p0, v0}, Lcom/netease/lotr/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netease/lotr/WebViewActivity;->refreshBtn:Landroid/widget/ImageButton;

    const v0, 0x7f070013

    .line 382
    invoke-virtual {p0, v0}, Lcom/netease/lotr/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netease/lotr/WebViewActivity;->closeBtn:Landroid/widget/ImageButton;

    .line 383
    new-instance v0, Lcom/netease/lotr/WebViewActivity$ButtonHandler;

    invoke-direct {v0, p0}, Lcom/netease/lotr/WebViewActivity$ButtonHandler;-><init>(Lcom/netease/lotr/WebViewActivity;)V

    .line 384
    iget-object v1, p0, Lcom/netease/lotr/WebViewActivity;->backwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 385
    iget-object v1, p0, Lcom/netease/lotr/WebViewActivity;->forwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 386
    iget-object v1, p0, Lcom/netease/lotr/WebViewActivity;->refreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 387
    iget-object v1, p0, Lcom/netease/lotr/WebViewActivity;->closeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f07005d

    .line 388
    invoke-virtual {p0, v1}, Lcom/netease/lotr/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 389
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private onBtnBackwardClicked()V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method

.method private onBtnCloseClicked()V
    .locals 0

    .line 407
    invoke-virtual {p0}, Lcom/netease/lotr/WebViewActivity;->finish()V

    return-void
.end method

.method private onBtnForwardClicked()V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    :cond_0
    return-void
.end method

.method private onBtnRefreshClicked()V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method private static native onJsCallback(ILjava/lang/String;)V
.end method

.method public static openWebview(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    .line 171
    sget-object v0, Lcom/netease/lotr/WebViewActivity;->instance:Lcom/netease/lotr/WebViewActivity;

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/lotr/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    .line 174
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "orientation"

    .line 175
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static native shouldStartLoading(ILjava/lang/String;)Z
.end method

.method public static uploadFile_(IILandroid/content/Intent;)V
    .locals 3

    .line 232
    sget-object v0, Lcom/netease/lotr/WebViewActivity;->instance:Lcom/netease/lotr/WebViewActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "onActivityResult image"

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 237
    sget-object p0, Lcom/netease/lotr/WebViewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x0

    if-eqz p2, :cond_3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    move-object p1, p0

    :goto_1
    if-nez p1, :cond_4

    .line 240
    sget-object p1, Lcom/netease/lotr/WebViewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 241
    sput-object p0, Lcom/netease/lotr/WebViewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-void

    :cond_4
    const-string p2, "UPFILE"

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sget-object p2, Lcom/netease/lotr/WebViewActivity;->sNeoxClient:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/netease/lotr/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 247
    sget-object p1, Lcom/netease/lotr/WebViewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 248
    sput-object p0, Lcom/netease/lotr/WebViewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-void

    .line 251
    :cond_5
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "UPFILE"

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult after parser uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object p2, Lcom/netease/lotr/WebViewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 254
    sput-object p0, Lcom/netease/lotr/WebViewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    :cond_6
    return-void
.end method

.method public static uploadFile_h(IILandroid/content/Intent;)V
    .locals 3

    .line 205
    sget-object v0, Lcom/netease/lotr/WebViewActivity;->instance:Lcom/netease/lotr/WebViewActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "onActivityResult image"

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 210
    sget-object p0, Lcom/netease/lotr/WebViewActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x0

    if-eqz p2, :cond_3

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    move-object p1, p0

    :goto_1
    if-nez p1, :cond_4

    .line 213
    sget-object p1, Lcom/netease/lotr/WebViewActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 214
    sput-object p0, Lcom/netease/lotr/WebViewActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    return-void

    :cond_4
    const-string p2, "UPFILE"

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object p2, Lcom/netease/lotr/WebViewActivity;->sNeoxClient:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/netease/lotr/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 220
    sget-object p1, Lcom/netease/lotr/WebViewActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 221
    sput-object p0, Lcom/netease/lotr/WebViewActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    return-void

    .line 224
    :cond_5
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "UPFILE"

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult after parser uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object p2, Lcom/netease/lotr/WebViewActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 227
    sput-object p0, Lcom/netease/lotr/WebViewActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    :cond_6
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "UPFILE"

    const-string v1, "onActivityResult"

    .line 261
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v0, Lcom/netease/lotr/WebViewActivity;->instance:Lcom/netease/lotr/WebViewActivity;

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    .line 268
    sget-object p1, Lcom/netease/lotr/WebViewActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_1

    return-void

    .line 270
    :cond_1
    sget-object p1, Lcom/netease/lotr/WebViewActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 271
    sput-object p1, Lcom/netease/lotr/WebViewActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 274
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/netease/lotr/WebViewActivity;->uploadFile_(IILandroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 288
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 289
    sput-object p0, Lcom/netease/lotr/WebViewActivity;->instance:Lcom/netease/lotr/WebViewActivity;

    .line 290
    sput-object p0, Lcom/netease/lotr/WebViewActivity;->sNeoxClient:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 292
    invoke-virtual {p0, p1}, Lcom/netease/lotr/WebViewActivity;->requestWindowFeature(I)Z

    .line 293
    invoke-virtual {p0}, Lcom/netease/lotr/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f090017

    .line 294
    invoke-virtual {p0, v0}, Lcom/netease/lotr/WebViewActivity;->setContentView(I)V

    .line 295
    invoke-virtual {p0}, Lcom/netease/lotr/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    .line 296
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/lotr/WebViewActivity;->url:Ljava/lang/String;

    const-string v1, "orientation"

    const/4 v2, 0x0

    .line 297
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x6

    .line 300
    invoke-virtual {p0, p1}, Lcom/netease/lotr/WebViewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 304
    invoke-virtual {p0, p1}, Lcom/netease/lotr/WebViewActivity;->setRequestedOrientation(I)V

    .line 307
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/netease/lotr/WebViewActivity;->initView()V

    .line 308
    iget-object p1, p0, Lcom/netease/lotr/WebViewActivity;->webiew:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/netease/lotr/WebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 335
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 336
    sput-object v0, Lcom/netease/lotr/WebViewActivity;->instance:Lcom/netease/lotr/WebViewActivity;

    .line 337
    sput-object v0, Lcom/netease/lotr/WebViewActivity;->sNeoxClient:Landroid/app/Activity;

    return-void
.end method

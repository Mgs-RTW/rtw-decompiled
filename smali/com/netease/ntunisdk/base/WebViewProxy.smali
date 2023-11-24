.class public Lcom/netease/ntunisdk/base/WebViewProxy;
.super Ljava/lang/Object;
.source "WebViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String; = "UniSDK WebViewProxy"

.field private static volatile c:Lcom/netease/ntunisdk/base/WebViewProxy;

.field private static d:Z

.field private static e:Lcom/netease/ntunisdk/base/OnWebViewListener;


# instance fields
.field a:Landroid/os/Handler;

.field private f:Landroid/content/Context;

.field private g:Landroid/webkit/WebView;

.field private h:Landroid/app/Dialog;

.field private i:Landroid/app/ProgressDialog;

.field private j:I

.field private k:Landroid/widget/Button;

.field private l:Ljava/lang/String;

.field private m:Landroid/widget/RelativeLayout;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    .line 66
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    .line 67
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    .line 68
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->i:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->j:I

    .line 73
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->k:Landroid/widget/Button;

    .line 76
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->l:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->m:Landroid/widget/RelativeLayout;

    .line 80
    iput v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->n:I

    .line 81
    iput v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->o:I

    .line 82
    iput v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->p:I

    const/4 v0, 0x1

    .line 86
    iput v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->r:I

    .line 87
    new-instance v0, Lcom/netease/ntunisdk/base/WebViewProxy$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$1;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)I
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->b(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/webkit/WebView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/WebViewProxy;Landroid/content/Context;)V
    .locals 9

    .line 57
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->m:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v2, "WebViewProxy [setForceDarkAllowed]"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setForceDarkAllowed(Z)V

    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "WEBVIEW_FULLFIT"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->l:Ljava/lang/String;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "WEBVIEW_BKCOLOR"

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v3, v5, :cond_2

    iget-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    const-string v5, "searchBoxJavaBridge_"

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    const-string v5, "accessibility"

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    const-string v5, "accessibilityTraversal"

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " Unisdk/1.1 NetType/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    invoke-static {v6}, Lcom/netease/ntunisdk/base/utils/NetConnectivity;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    sget-object v3, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WebViewProxy [init] User Agent:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->i:Landroid/app/ProgressDialog;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "unisdk_webview_progressdialog"

    const-string v5, "layout"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    const-string v6, "WEBVIEW_SUPPORT_BACK_KEY"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "WebViewProxy [checkStatus] isSupportBackKey:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_3
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setContentView(I)V

    iput-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->i:Landroid/app/ProgressDialog;

    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    new-instance v3, Lcom/netease/ntunisdk/base/WebViewProxy$2;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$2;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    new-instance v3, Lcom/netease/ntunisdk/base/WebViewProxy$3;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$3;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    new-instance v3, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    const-string v5, "$CallbackInterface"

    invoke-virtual {v0, v3, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->m:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    invoke-virtual {v3, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v3, "WEBVIEW_CLBTN"

    const-string v5, "0"

    invoke-interface {v0, v3, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WebViewProxy [init] isShowClostBtn="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->k:Landroid/widget/Button;

    new-instance v3, Lcom/netease/ntunisdk/base/WebViewProxy$4;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$4;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x42080000    # 34.0f

    mul-float v0, v0, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "unisdk_webview_close"

    const-string v4, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->k:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->m:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_5
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WebViewProxy [init] isFullFit:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    iget-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "unisdk_webview_dialog"

    const-string v4, "style"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    goto :goto_0

    :cond_6
    new-instance v0, Landroid/app/Dialog;

    const v3, 0x103000a

    invoke-direct {v0, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_7

    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->m:Landroid/widget/RelativeLayout;

    const/16 v0, 0x600

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    :cond_7
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "WEBVIEW_SUPPORT_BACK_KEY"

    const-string v3, "0"

    invoke-interface {p1, v0, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WebViewProxy [init] isSupportBackKey:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_8
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->d()V

    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    new-instance v0, Lcom/netease/ntunisdk/base/WebViewProxy$5;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$5;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic a(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 57
    sput-boolean p0, Lcom/netease/ntunisdk/base/WebViewProxy;->d:Z

    return p0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 790
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 791
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "GET"

    .line 792
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 793
    sget v0, Lcom/netease/ntunisdk/base/utils/NetUtil;->CONNECTION_TIMEOUT:I

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 794
    sget v0, Lcom/netease/ntunisdk/base/utils/NetUtil;->SO_TIMEOUT:I

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 795
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 796
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    .line 801
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    .line 797
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_0

    .line 801
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_1
    return v0

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0
.end method

.method static synthetic b(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/widget/Button;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->k:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic b()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/netease/ntunisdk/base/WebViewProxy;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->i:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic c()Lcom/netease/ntunisdk/base/OnWebViewListener;
    .locals 1

    .line 57
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->e:Lcom/netease/ntunisdk/base/OnWebViewListener;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/netease/ntunisdk/base/WebViewProxy;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->r:I

    return p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    .line 700
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "FULL_UIN"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 701
    :try_start_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v4, "USERINFO_UID"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 702
    :try_start_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v4, "USERINFO_HOSTID"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    :goto_0
    move-object v0, v6

    .line 703
    :goto_1
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    move-object v1, v2

    .line 707
    :goto_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 708
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 709
    invoke-virtual {v4}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 710
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, "uid"

    .line 711
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "&uid="

    .line 712
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v3, "role_id"

    .line 714
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "&role_id="

    .line 715
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v0, "server"

    .line 717
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "&server="

    .line 718
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    const-string v4, "&uid="

    .line 722
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&role_id="

    .line 723
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&server="

    .line 724
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 727
    :cond_3
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "?"

    .line 730
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    const-string v1, "?"

    .line 731
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v1, v3, :cond_4

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 734
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 737
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    :goto_4
    return-object p0
.end method

.method private d()V
    .locals 10

    .line 446
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v1, "WebViewProxy [adjustSize]"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 450
    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 451
    sget-object v2, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WebViewProxy [adjustSize] tOrientation="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mOrientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget v2, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->j:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    .line 455
    sget-object v2, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v4, "WebViewProxy [adjustSize] need refresh"

    invoke-static {v2, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iput v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->p:I

    .line 459
    :cond_0
    sget-object v2, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WebViewProxy [adjustSize] mNeedRefreshSizeStuts="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->p:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget v2, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->p:I

    if-eq v3, v2, :cond_1

    .line 462
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v1, "WebViewProxy [adjustSize] is always the same, stop adjustSize"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x2

    .line 466
    iput v2, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->p:I

    .line 467
    iput v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->j:I

    .line 469
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-le v1, v4, :cond_2

    .line 473
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 474
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 475
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 476
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 478
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 480
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    move v9, v1

    move v1, v0

    move v0, v9

    .line 482
    :goto_0
    sget-object v4, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WebViewProxy [adjustSize] width:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    sget-object v4, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WebViewProxy [adjustSize] isFullFit:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 487
    iget-object v5, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const-string v5, "0"

    .line 489
    iget-object v6, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 491
    iget-object v5, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 492
    sget-object v5, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v6, "WebViewProxy [adjustSize] UniSdkUtils.isTablet true"

    invoke-static {v5, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v5, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v2, :cond_3

    int-to-double v5, v0

    const-wide v7, 0x3fe199999999999aL    # 0.55

    .line 495
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-int v0, v5

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-double v0, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 496
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v5

    double-to-int v0, v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 498
    :cond_3
    iget-object v2, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_5

    int-to-double v5, v0

    const-wide v7, 0x3fe6666666666666L    # 0.7

    .line 499
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-int v0, v5

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-double v0, v1

    const-wide v5, 0x3fd999999999999aL    # 0.4

    .line 500
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v5

    double-to-int v0, v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 504
    :cond_4
    sget-object v2, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v5, "WebViewProxy [adjustSize] UniSdkUtils.isTablet false"

    invoke-static {v2, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-double v5, v0

    const-wide v7, 0x3fe999999999999aL    # 0.8

    .line 505
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-int v0, v5

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-double v0, v1

    .line 506
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v7

    double-to-int v0, v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 514
    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "layoutInDisplayCutoutMode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 518
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :catch_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 525
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    move-result v0

    .line 526
    sget-object v1, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WebViewProxy [adjustSize] m_webView.requestFocus():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->i:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 529
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_6
    return-void
.end method

.method static synthetic e(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    return-object p0
.end method

.method private e()Z
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/Dialog;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    return-object v0
.end method

.method public static getInstance()Lcom/netease/ntunisdk/base/WebViewProxy;
    .locals 2

    .line 123
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->c:Lcom/netease/ntunisdk/base/WebViewProxy;

    if-nez v0, :cond_1

    .line 124
    const-class v0, Lcom/netease/ntunisdk/base/WebViewProxy;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/base/WebViewProxy;->c:Lcom/netease/ntunisdk/base/WebViewProxy;

    if-nez v1, :cond_0

    .line 126
    new-instance v1, Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-direct {v1}, Lcom/netease/ntunisdk/base/WebViewProxy;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/base/WebViewProxy;->c:Lcom/netease/ntunisdk/base/WebViewProxy;

    .line 128
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 130
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->c:Lcom/netease/ntunisdk/base/WebViewProxy;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/webkit/WebView;
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/ntunisdk/base/WebViewProxy;)I
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->j:I

    return v0
.end method

.method static synthetic j(Lcom/netease/ntunisdk/base/WebViewProxy;)Z
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->e()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized closeWebView()V
    .locals 2

    monitor-enter p0

    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 747
    new-instance v1, Lcom/netease/ntunisdk/base/WebViewProxy$8;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$8;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 744
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disposeWebView()V
    .locals 2

    monitor-enter p0

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 766
    new-instance v1, Lcom/netease/ntunisdk/base/WebViewProxy$9;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$9;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 764
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doOpenWebView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 644
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 645
    iget v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->r:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->r:I

    .line 646
    new-instance v1, Lcom/netease/ntunisdk/base/WebViewProxy$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/WebViewProxy$7;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 643
    monitor-exit p0

    throw p1
.end method

.method public getCallbackInterface()Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;
    .locals 1

    .line 134
    new-instance v0, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    return-object v0
.end method

.method public declared-synchronized onConfigChange(Landroid/content/res/Configuration;)V
    .locals 5

    monitor-enter p0

    .line 609
    :try_start_0
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v1, "WebViewProxy [onConfigChange] start"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->e()Z

    move-result v0

    const/16 v1, 0xd

    if-eqz v0, :cond_2

    .line 611
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v2, "WebViewProxy [onConfigChange] has isInitialized"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 614
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v2, "WebViewProxy [onConfigChange] Configuration.ORIENTATION_LANDSCAPE..."

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->d()V

    goto :goto_0

    .line 620
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 621
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v3, "WebViewProxy [onConfigChange] Configuration.ORIENTATION_PORTRAIT..."

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 624
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WebViewProxy [onConfigChange] mScreenWidthDp="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->o:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", config.screenHeightDp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WebViewProxy [onConfigChange] mScreenHeightDp="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->n:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", config.screenHeightDp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->o:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->n:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v0, v3, :cond_2

    .line 628
    :cond_1
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v3, "WebViewProxy [onConfigChange] call adjustSize"

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iput v2, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->p:I

    .line 630
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->d()V

    .line 636
    :cond_2
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    .line 637
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->o:I

    .line 638
    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->n:I

    .line 639
    sget-object p1, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebViewProxy [onConfigChange] reset size, mScreenWidthDp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenHeightDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 608
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPause()V
    .locals 2

    monitor-enter p0

    .line 600
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v1, "WebViewProxy [onPause]"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 599
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .locals 2

    monitor-enter p0

    .line 589
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v1, "WebViewProxy [onResume]"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->d()V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 588
    monitor-exit p0

    throw v0
.end method

.method public openWebView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 535
    iput-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    .line 536
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "WEBVIEW_MODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->q:I

    .line 538
    iget v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 539
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "WEBVIEW_FULLFIT"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->l:Ljava/lang/String;

    .line 540
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "WEBVIEW_CLBTN"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 541
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "WEBVIEW_SUPPORT_BACK_KEY"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "methodId"

    const-string v3, "NGWebViewOpenURL"

    .line 545
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "URLString"

    .line 546
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "intercept_schemes"

    const-string v2, "unisdk-jsbridge"

    .line 547
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "additionalUserAgent"

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Unisdk/2.0 NetType/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/utils/NetConnectivity;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "1"

    .line 549
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "qstn_close_btn"

    const-string p2, "1"

    .line 550
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "1"

    .line 552
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "supportBackKey"

    const-string p2, "1"

    .line 553
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p1, "1"

    .line 555
    iget-object p2, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "isFullScreen"

    const-string p2, "1"

    .line 556
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 558
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 559
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 560
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 562
    div-int/lit8 v0, p2, 0xa

    .line 563
    div-int/lit8 v2, p1, 0xa

    mul-int/lit8 p2, p2, 0x8

    .line 564
    div-int/lit8 p2, p2, 0xa

    mul-int/lit8 p1, p1, 0x8

    .line 565
    div-int/lit8 p1, p1, 0xa

    const-string v3, "origin_x"

    .line 566
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "origin_y"

    .line 567
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "width"

    .line 568
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "height"

    .line 569
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 571
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 572
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    .line 578
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/ntunisdk/base/WebViewProxy$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/WebViewProxy$6;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 584
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setWebViewListener(Lcom/netease/ntunisdk/base/OnWebViewListener;)V
    .locals 0

    .line 138
    sput-object p1, Lcom/netease/ntunisdk/base/WebViewProxy;->e:Lcom/netease/ntunisdk/base/OnWebViewListener;

    return-void
.end method

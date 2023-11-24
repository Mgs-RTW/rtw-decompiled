.class public Lcom/netease/lotr/NeoXWebView;
.super Ljava/lang/Object;
.source "NeoXWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lotr/NeoXWebView$NeoXWebViewClient;
    }
.end annotation


# instance fields
.field private m_activity:Landroid/app/Activity;

.field private m_clearHistory:Z

.field private m_dialog:Landroid/app/AlertDialog;

.field private m_layout:Landroid/widget/LinearLayout;

.field private m_title:Landroid/widget/TextView;

.field private m_webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/netease/lotr/NeoXWebView;->m_dialog:Landroid/app/AlertDialog;

    .line 24
    iput-object v0, p0, Lcom/netease/lotr/NeoXWebView;->m_activity:Landroid/app/Activity;

    .line 25
    iput-object v0, p0, Lcom/netease/lotr/NeoXWebView;->m_layout:Landroid/widget/LinearLayout;

    .line 26
    iput-object v0, p0, Lcom/netease/lotr/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    .line 27
    iput-object v0, p0, Lcom/netease/lotr/NeoXWebView;->m_title:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/netease/lotr/NeoXWebView;->m_clearHistory:Z

    .line 31
    iput-object p1, p0, Lcom/netease/lotr/NeoXWebView;->m_activity:Landroid/app/Activity;

    .line 33
    invoke-direct {p0, p1}, Lcom/netease/lotr/NeoXWebView;->createLayout(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lotr/NeoXWebView;->m_layout:Landroid/widget/LinearLayout;

    .line 34
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lotr/NeoXWebView;->m_dialog:Landroid/app/AlertDialog;

    .line 35
    iget-object v0, p0, Lcom/netease/lotr/NeoXWebView;->m_dialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/netease/lotr/NeoXWebView;->m_layout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 36
    iget-object p1, p0, Lcom/netease/lotr/NeoXWebView;->m_dialog:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/lotr/NeoXWebView;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/netease/lotr/NeoXWebView;->m_clearHistory:Z

    return p0
.end method

.method static synthetic access$002(Lcom/netease/lotr/NeoXWebView;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/netease/lotr/NeoXWebView;->m_clearHistory:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netease/lotr/NeoXWebView;)Landroid/webkit/WebView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/netease/lotr/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method private createLayout(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .locals 7

    .line 93
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 98
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 100
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0013

    .line 101
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 102
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v4, Lcom/netease/lotr/NeoXWebView$1;

    invoke-direct {v4, p0}, Lcom/netease/lotr/NeoXWebView$1;-><init>(Lcom/netease/lotr/NeoXWebView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/netease/lotr/NeoXWebView;->m_title:Landroid/widget/TextView;

    .line 110
    iget-object v4, p0, Lcom/netease/lotr/NeoXWebView;->m_title:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v4, p0, Lcom/netease/lotr/NeoXWebView;->m_title:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 113
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    iget-object v3, p0, Lcom/netease/lotr/NeoXWebView;->m_title:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/netease/lotr/NeoXWebView;->createWebView(Landroid/app/Activity;)Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lotr/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    .line 117
    iget-object p1, p0, Lcom/netease/lotr/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    iget-object p1, p0, Lcom/netease/lotr/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createWebView(Landroid/app/Activity;)Landroid/webkit/WebView;
    .locals 6

    .line 126
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 128
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 129
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 130
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 131
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 135
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "removeJavascriptInterface"

    new-array v4, p1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 136
    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "searchBoxJavaBridge_"

    aput-object v3, p1, v2

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "NeoXWebView"

    const-string v1, "This API level do not support `removeJavascriptInterface`"

    .line 138
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    new-instance p1, Lcom/netease/lotr/NeoXWebView$NeoXWebViewClient;

    invoke-direct {p1, p0}, Lcom/netease/lotr/NeoXWebView$NeoXWebViewClient;-><init>(Lcom/netease/lotr/NeoXWebView;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 142
    new-instance p1, Landroid/webkit/WebChromeClient;

    invoke-direct {p1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 146
    new-instance p1, Lcom/netease/lotr/NeoXWebView$2;

    invoke-direct {p1, p0}, Lcom/netease/lotr/NeoXWebView$2;-><init>(Lcom/netease/lotr/NeoXWebView;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/netease/lotr/NeoXWebView;->m_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 59
    iget-object v0, p0, Lcom/netease/lotr/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/netease/lotr/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/netease/lotr/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 73
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 74
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 75
    iget-object p1, p0, Lcom/netease/lotr/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/netease/lotr/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/netease/lotr/NeoXWebView;->hide()V

    :cond_1
    :goto_0
    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/netease/lotr/NeoXWebView;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/netease/lotr/NeoXWebView;->m_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/netease/lotr/NeoXWebView;->m_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 44
    iget-object v0, p0, Lcom/netease/lotr/NeoXWebView;->m_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 46
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 47
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 48
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v1, 0x20000

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/netease/lotr/NeoXWebView;->m_clearHistory:Z

    return-void
.end method

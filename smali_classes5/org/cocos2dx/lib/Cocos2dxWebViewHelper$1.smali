.class final Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$1;
.super Ljava/lang/Object;
.source "Cocos2dxWebViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->createWebView()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 302
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 305
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 308
    new-instance v1, Landroid/widget/FrameLayout;

    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sNeoxClient:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 309
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    new-instance v0, Lorg/cocos2dx/lib/MyDialog;

    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sNeoxClient:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lorg/cocos2dx/lib/MyDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sDialog:Landroid/app/Dialog;

    .line 311
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sDialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 312
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sDialog:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 313
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 314
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 315
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v4, 0x4000000

    .line 317
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    const/16 v4, 0x400

    .line 318
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 319
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    .line 323
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v5, 0x33

    .line 326
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 327
    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 330
    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$002(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 331
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxWebView;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sNeoxClient:Landroid/app/Activity;

    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$1;->val$index:I

    invoke-direct {v0, v1, v4}, Lorg/cocos2dx/lib/Cocos2dxWebView;-><init>(Landroid/content/Context;I)V

    .line 332
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_0

    .line 333
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 339
    :goto_0
    invoke-virtual {v0, v3}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setBackgroundColor(I)V

    .line 343
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$000()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 347
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->webViews:Landroid/util/SparseArray;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$1;->val$index:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 350
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    .line 353
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 356
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_1
    return-void
.end method

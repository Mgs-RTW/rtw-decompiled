.class public Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;
.super Landroid/app/Activity;
.source "ProtocolLauncher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "L"


# instance fields
.field private gameLauncherActivity:Ljava/lang/String;

.field private hasStart:Z

.field private mBaseUrl:Ljava/lang/String;

.field private mContentView:Landroid/widget/FrameLayout;

.field private mIntent:Landroid/content/Intent;

.field private mLoadingView:Landroid/view/View;

.field private mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

.field private mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-direct {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->hasStart:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getLauncherActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mBaseUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->showProtocolByDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->exitGame()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getProtocolManager()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->gameLauncherActivity:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Z
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->openGameByCold()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->dismissProgress()V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/view/UniWebView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->rejectProtocolConfirm(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Landroid/widget/FrameLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mRootView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->removeWebView()V

    return-void
.end method

.method private dismissProgress()V
    .locals 2

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mLoadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private exitGame()V
    .locals 0

    .line 579
    invoke-static {p0}, Lcom/netease/ntunisdk/external/protocol/utils/SysHelper;->killProcess(Landroid/content/Context;)V

    return-void
.end method

.method private getBgColor()I
    .locals 4

    const-string v0, "launcher_bg_color"

    const-string v1, "string"

    .line 166
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x1000000

    if-lez v0, :cond_1

    .line 168
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "#"

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return v1
.end method

.method private getLauncherActivity()V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->gameLauncherActivity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 527
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "gameLauncherActivity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->gameLauncherActivity:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 529
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 530
    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->gameLauncherActivity:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized getProtocolManager()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "L"

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " gameLauncherActivity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->gameLauncherActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "protocol_issuer_name"

    .line 387
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setIssuer(Ljava/lang/String;)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setUrl(Ljava/lang/String;)V

    .line 395
    :cond_1
    invoke-static {p0}, Lcom/netease/ntunisdk/external/protocol/utils/CommonUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "L"

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gameName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setGameName(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->loadLocalConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "protocol_hide_logo"

    .line 401
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, ""

    .line 405
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v1

    .line 406
    invoke-virtual {v1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->init(Landroid/app/Activity;)V

    const-string v2, "1"

    .line 407
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setHideWebViewLogo(Z)V

    .line 408
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setProp(Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hidSysNavigation()V
    .locals 7

    .line 719
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 721
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 722
    const-class v1, Landroid/view/View;

    const-string v2, "setSystemUiVisibility"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x2

    .line 723
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 150
    sget v0, Lcom/netease/ntunisdk/protocollib/R$layout;->uni_p_webview:I

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->setContentView(I)V

    const-string v0, "id"

    const-string v1, "uni_p_root"

    .line 151
    invoke-static {p0, v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mRootView:Landroid/widget/FrameLayout;

    const-string v1, "uni_p_content"

    .line 152
    invoke-static {p0, v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mContentView:Landroid/widget/FrameLayout;

    .line 153
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->setBgImage()V

    return-void
.end method

.method private initWebView(Ljava/lang/String;)Z
    .locals 3

    const-string v0, ".json"

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "json"

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 189
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "html?base_protocol=1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->isHideWebViewLogo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&hide_logo=1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mBaseUrl:Ljava/lang/String;

    .line 197
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    if-nez p1, :cond_1

    .line 198
    new-instance p1, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$3;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$3;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->setOnShowListener(Lcom/netease/ntunisdk/external/protocol/view/UniWebView$OnShowListener;)V

    .line 206
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$5;

    new-instance v2, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V

    invoke-direct {v0, p0, v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$5;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;Lcom/netease/ntunisdk/external/protocol/view/EventCallback;)V

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->setWebBridgeCallback(Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;)V

    .line 293
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->requestFocus()Z

    .line 294
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->setBaseUrl(Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->loadUrl(Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->loadingAlarm(Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->showWebView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    .line 300
    :catchall_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->removeWebView()V

    return v1
.end method

.method private isDebug()Z
    .locals 4

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".BuildConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 683
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "DEBUG"

    .line 684
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    .line 685
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return v1

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 693
    :try_start_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "NtUniSdkDebug_key"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v2, v1, :cond_1

    return v1

    :cond_1
    if-ne v2, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 702
    :catch_1
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 704
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".data"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ntUniSDK"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "base"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "debug_log"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 706
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v2, :cond_3

    return v1

    :catch_2
    :cond_3
    return v0
.end method

.method private isIntentEmpty(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 370
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 371
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 374
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v0, :cond_3

    const-string v1, "startFromLauncher"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "profile"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v0

    .line 376
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method private isSupportShortcut()Z
    .locals 4

    const/4 v0, 0x0

    .line 361
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 362
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "CURRENT_SHORTCUT_MAIN_RUNNING"

    invoke-interface {v1, v3, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method private loadLocalConfig()V
    .locals 4

    const-string v0, "L"

    :try_start_0
    const-string v1, "protocol_launcher.json"

    .line 419
    invoke-static {p0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/FileUtil;->readAssetsFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 422
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "url"

    .line 423
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 425
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v3, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setUrl(Ljava/lang/String;)V

    :cond_1
    const-string v1, "urlType"

    .line 428
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 430
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v3, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setUrlType(Ljava/lang/String;)V

    :cond_2
    const-string v1, "offlineGameFlag"

    .line 433
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 435
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v3, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setOfflineGameFlag(Ljava/lang/String;)V

    :cond_3
    const-string v1, "newOfflineFlag"

    .line 438
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 440
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v3, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setNewOfflineFlag(Ljava/lang/String;)V

    :cond_4
    const-string v1, "showTitleFlag"

    .line 443
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 445
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v3, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setShowTitleFlag(Ljava/lang/String;)V

    :cond_5
    const-string v1, "showAgreeLineFlag"

    .line 448
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 450
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v3, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setShowAgreeLineFlag(Ljava/lang/String;)V

    :cond_6
    const-string v1, "agreeLineText"

    .line 453
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 454
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 455
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v3, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setAgreeLineText(Ljava/lang/String;)V

    :cond_7
    const-string v1, "locale"

    .line 458
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 460
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v3, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setLocale(Ljava/lang/String;)V

    :cond_8
    const-string v1, "issuer"

    .line 463
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 465
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v2, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setIssuer(Ljava/lang/String;)V

    .line 468
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch issuer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getIssuer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private openGameByCold()Z
    .locals 5

    .line 639
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getLauncherActivity()V

    .line 640
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->gameLauncherActivity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "\u53c2\u6570gameLauncherActivity\u9519\u8bef"

    .line 641
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 642
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->exitGame()V

    return v1

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->onDestory()V

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 650
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 651
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    .line 652
    invoke-virtual {v3, v0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 655
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    :goto_0
    const/high16 v0, 0x24000000

    .line 657
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start Protocol Launcher Activity[\u51b7\u542f\u52a8]:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->gameLauncherActivity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "L"

    invoke-static {v4, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->gameLauncherActivity:Ljava/lang/String;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 660
    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->startActivity(Landroid/content/Intent;)V

    .line 661
    invoke-virtual {p0, v2, v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->overridePendingTransition(II)V

    .line 662
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 663
    new-instance v2, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$7;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$7;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V

    const-wide/16 v3, 0x9c4

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 670
    :cond_3
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$8;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$8;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return v1
.end method

.method private openGameByHot()Z
    .locals 5

    .line 589
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mHasShowProtocolLauncher:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const-string v0, "L"

    const-string v2, "null != SdkMgr.getInst()"

    .line 590
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getLauncherActivity()V

    .line 593
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 594
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v2, 0x0

    .line 595
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    .line 596
    invoke-virtual {v3, v2}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 599
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 601
    :goto_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->isSupportShortcut()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->isIntentEmpty(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 602
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start Protocol Launcher Activity[\u70ed\u542f\u52a8]:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->gameLauncherActivity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->gameLauncherActivity:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x24400000

    .line 604
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 605
    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->startActivity(Landroid/content/Intent;)V

    .line 606
    invoke-virtual {p0, v1, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->overridePendingTransition(II)V

    .line 608
    :cond_4
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method private preloadLibrary()V
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private rejectProtocolConfirm(Landroid/content/Context;)V
    .locals 7

    .line 755
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;-><init>(Landroid/content/Context;)V

    .line 756
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 757
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->getProtocolLocale(Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;)Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 760
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 761
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 762
    iput-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 763
    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    const-string v2, "string"

    const-string v3, "unisdk_protocol_reject_confirm_msg"

    .line 765
    invoke-static {p1, v3, v2}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "unisdk_protocol_reject_confirm_ok"

    .line 766
    invoke-static {p1, v4, v2}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "unisdk_protocol_reject_confirm_back"

    .line 767
    invoke-static {p1, v5, v2}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 768
    new-instance p1, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$9;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$9;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V

    new-instance v6, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$10;

    invoke-direct {v6, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$10;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V

    const-string v1, "  "

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private removeWebView()V
    .locals 2

    const/16 v0, 0x8

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 349
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    if-eqz v1, :cond_1

    .line 351
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    return-void
.end method

.method private setBgImage()V
    .locals 4

    const-string v0, "protocol_launcher_bg"

    const-string v1, "drawable"

    .line 545
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "L"

    if-gtz v0, :cond_0

    const-string v0, "no res/protocol_launcher_bg"

    .line 547
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 563
    :cond_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->setWindowBackground()V

    :try_start_1
    const-string v2, "uni_p_background"

    const-string v3, "id"

    .line 565
    invoke-static {p0, v2, v3}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    .line 566
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 567
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 568
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v0, "set protocol_launcher_bg"

    .line 569
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method private setWindowBackground()V
    .locals 3

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getBgColor()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private showProgress()V
    .locals 3

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "uni_p_loaging"

    const-string v2, "id"

    .line 330
    invoke-static {p0, v0, v2}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mLoadingView:Landroid/view/View;

    .line 331
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 337
    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mLoadingView:Landroid/view/View;

    :goto_0
    return-void
.end method

.method private declared-synchronized showProtocolByDialog()V
    .locals 2

    monitor-enter p0

    .line 478
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->hasStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 479
    :try_start_1
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->hasStart:Z

    .line 480
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->gameLauncherActivity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getLauncherActivity()V

    .line 482
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->gameLauncherActivity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u53c2\u6570gameLauncherActivity\u9519\u8bef"

    .line 483
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 484
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->exitGame()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    monitor-exit p0

    return-void

    .line 488
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    if-nez v0, :cond_2

    .line 489
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getProtocolManager()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;)V

    .line 520
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolWhenLaunch(Landroid/app/Activity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 521
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showWebView()V
    .locals 3

    .line 309
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->showProgress()V

    .line 310
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 312
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mContentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mContentView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 745
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 746
    invoke-virtual {p0, v0, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->goBack()V

    goto :goto_0

    .line 540
    :cond_0
    invoke-direct {p0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->rejectProtocolConfirm(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 617
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 619
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/utils/SysHelper;->hideSystemUI(Landroid/view/Window;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->isDebug()Z

    move-result p1

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->setDebug(Z)V

    .line 113
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getLauncherActivity()V

    .line 115
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->hidSysNavigation()V

    .line 116
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/utils/SysHelper;->hideSystemUI(Landroid/view/Window;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 119
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    if-nez p1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getProtocolManager()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mIntent:Landroid/content/Intent;

    .line 123
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->openGameByHot()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 124
    :cond_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->preloadLibrary()V

    .line 125
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->initView()V

    .line 126
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->hasAcceptLaunchProtocol()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 127
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iput-boolean v0, p1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mHasShowProtocolLauncher:Z

    .line 128
    invoke-virtual {p1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->notShowCallback(Landroid/app/Activity;)V

    .line 129
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mRootView:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setProtocolShowing(Z)V

    .line 137
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-le p1, v0, :cond_3

    const-string p1, ""

    .line 138
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->initWebView(Ljava/lang/String;)Z

    goto :goto_1

    .line 140
    :cond_3
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->showProtocolByDialog()V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 731
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "L"

    const-string v1, "onDestroy"

    .line 732
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->onDestory()V

    .line 735
    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->destroy()V

    .line 739
    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mWebView:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 626
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 629
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/utils/SysHelper;->hideSystemUI(Landroid/view/Window;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

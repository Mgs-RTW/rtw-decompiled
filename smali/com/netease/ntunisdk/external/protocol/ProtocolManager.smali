.class public Lcom/netease/ntunisdk/external/protocol/ProtocolManager;
.super Ljava/lang/Object;
.source "ProtocolManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;,
        Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;,
        Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable;,
        Lcom/netease/ntunisdk/external/protocol/ProtocolManager$OnProtocolCallback;
    }
.end annotation


# static fields
.field private static final RETRY:I = 0x64

.field private static final SHOW:I = 0x65

.field private static final TAG:Ljava/lang/String; = "M"

.field private static final UNKNOWN:I = -0x1

.field private static volatile instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;


# instance fields
.field private hasCustomProtocol:Z

.field private hasInit:Z

.field private isProtocolDialogReShow:Z

.field private isProtocolShowing:Z

.field private mActivityReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mAlerterEx:Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

.field private mApplicationContext:Landroid/content/Context;

.field private final mConcreteCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContentDialog:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

.field private mDefaultCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

.field mHasShowProtocolLauncher:Z

.field private mHideWebViewLogo:Z

.field private mLastScene:Lcom/netease/ntunisdk/external/protocol/Scene;

.field private mLastViewStyle:I

.field private mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

.field private final mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

.field private mUserId:Ljava/lang/String;

.field private screenHeightDp:I

.field private screenWidthDp:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->hasCustomProtocol:Z

    .line 68
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->isProtocolShowing:Z

    .line 69
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->isProtocolDialogReShow:Z

    .line 71
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mHideWebViewLogo:Z

    .line 72
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->hasInit:Z

    .line 80
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    invoke-direct {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mConcreteCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$1;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mDefaultCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->hasCustomProtocol:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mDefaultCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mConcreteCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->isProtocolShowing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;ZLjava/lang/Runnable;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showErrorDialog(Landroid/app/Activity;ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;IZ)Landroid/app/Dialog;
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->preDialog(Landroid/app/Activity;Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;IZ)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->copyLocalProtocolFile(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->loadProtocol()V

    return-void
.end method

.method private final copyLocalProtocolFile(Landroid/content/Context;)V
    .locals 8

    if-eqz p1, :cond_3

    .line 566
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->prepareProtocolInfo(Landroid/content/Context;)V

    .line 567
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "protocol"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, ".zip"

    const-string v4, "load assert protocol"

    const-string v5, "M"

    if-nez v2, :cond_0

    .line 570
    invoke-static {v5, v4}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/FileUtil;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    .line 574
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 575
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_2

    aget-object v7, v0, v6

    .line 576
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    return-void

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 579
    :cond_2
    invoke-static {v5, v4}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/FileUtil;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;
    .locals 2

    .line 120
    sget-object v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    if-nez v0, :cond_1

    .line 121
    const-class v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    monitor-enter v0

    .line 122
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-direct {v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    .line 125
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 127
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    return-object v0
.end method

.method private loadProtocol()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getOfflineGameFlag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 407
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->loadLocalProtocol()V

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->checkLatestProtocol()V

    :goto_0
    return-void
.end method

.method private preDialog(Landroid/app/Activity;Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;IZ)Landroid/app/Dialog;
    .locals 13

    move-object v1, p0

    move-object/from16 v0, p3

    const-string v10, "M"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    move-object v4, p2

    .line 501
    iput-object v4, v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mLastScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    move/from16 v5, p4

    .line 502
    iput v5, v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mLastViewStyle:I

    .line 505
    :try_start_0
    sget-object v3, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$13;->$SwitchMap$com$netease$ntunisdk$external$protocol$Scene:[I

    invoke-virtual {p2}, Lcom/netease/ntunisdk/external/protocol/Scene;->ordinal()I

    move-result v6

    aget v3, v3, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v3, v6, :cond_3

    if-eq v3, v7, :cond_3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1

    move-object v3, v2

    goto :goto_0

    .line 522
    :cond_1
    iget-object v3, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->reviewText:Ljava/lang/String;

    goto :goto_0

    .line 519
    :cond_2
    iget-object v3, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    goto :goto_0

    .line 508
    :cond_3
    iget v3, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->acceptStatus:I

    if-ne v3, v7, :cond_4

    .line 510
    iget-object v3, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->updateText:Ljava/lang/String;

    .line 511
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 512
    iget-object v3, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    goto :goto_0

    .line 515
    :cond_4
    iget-object v3, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    .line 529
    :cond_5
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v0, "empty  ProtocolText"

    .line 530
    invoke-static {v10, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 533
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 535
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    const/4 v2, 0x0

    .line 537
    invoke-interface {v8}, Landroid/text/Spanned;->length()I

    move-result v3

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v8, v2, v3, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [Landroid/text/style/URLSpan;

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##fromHtml time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v6

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    new-instance v2, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    move-object v3, p1

    invoke-direct {v2, p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mContentDialog:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    .line 541
    iget-object v2, v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mContentDialog:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p4

    move-object/from16 v6, p3

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->init(Landroid/app/Activity;Lcom/netease/ntunisdk/external/protocol/Scene;ILcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;ZLandroid/text/Spanned;[Landroid/text/style/URLSpan;)V

    .line 542
    iget-object v0, v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mContentDialog:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preDialog Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v0, v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mContentDialog:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    return-object v0
.end method

.method private prepareProtocolInfo(Landroid/content/Context;)V
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getIssuer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "protocol_issuer_name"

    .line 593
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setIssuer(Ljava/lang/String;)V

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setUrl(Ljava/lang/String;)V

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 604
    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/utils/CommonUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gameName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "M"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setGameName(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private rebuildDialog(Landroid/app/Activity;)V
    .locals 2

    .line 696
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->isProtocolShowing:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->isProtocolDialogReShow:Z

    if-eqz v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->init(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x2

    .line 700
    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mLastViewStyle:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mUserId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolIfNeed(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocol(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showErrorDialog(Landroid/app/Activity;ZLjava/lang/Runnable;)V
    .locals 10

    if-eqz p1, :cond_2

    .line 274
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;

    invoke-direct {v1, p0, p2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Z)V

    invoke-direct {v0, p1, v1}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/external/protocol/view/OnBackPressedListener;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mAlerterEx:Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    .line 283
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getLocale()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->getResourcesConfigLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 287
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 288
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 289
    iput-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 290
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    const-string v1, "string"

    const-string v2, "unisdk_protocol_network_error"

    .line 292
    invoke-static {p1, v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->getResId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "unisdk_protocol_retry"

    .line 293
    invoke-static {p1, v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->getResId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "unisdk_protocol_cancel"

    .line 294
    invoke-static {p1, v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->getResId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 295
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mAlerterEx:Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    new-instance v7, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;

    invoke-direct {v7, p0, p3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Ljava/lang/Runnable;)V

    new-instance v9, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$6;

    invoke-direct {v9, p0, p2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$6;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Z)V

    const-string v4, "  "

    invoke-virtual/range {v3 .. v9}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public acceptProtocol()V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->saveConfirmByUid(Ljava/lang/String;)V

    return-void
.end method

.method public acceptProtocol(Ljava/lang/String;)V
    .locals 1

    .line 623
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->saveConfirmByUid(Ljava/lang/String;)V

    return-void
.end method

.method public gameLoginSuccess(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 652
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$12;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 657
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getCallback()Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mDefaultCallback:Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    return-object v0
.end method

.method public getCurrentProtocolId()I
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getBaseProtocol()Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getBaseProtocol()Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v0

    iget v0, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->id:I

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentProtocolVersion()I
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getBaseProtocol()Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getBaseProtocol()Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v0

    iget v0, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->version:I

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getProp()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    return-object v0
.end method

.method public getProtocolType()I
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "latest_v36.tw.json"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v1, "latest_v39.tw.json"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    return v2
.end method

.method final getProvider()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    return-object v0
.end method

.method public handleOnConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "M"

    const-string v1, "handleOnConfigurationChanged"

    .line 190
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->screenWidthDp:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->screenHeightDp:I

    if-eq v0, v1, :cond_1

    .line 192
    :cond_0
    iget v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->screenWidthDp:I

    .line 193
    iget p2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->screenHeightDp:I

    .line 194
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mContentDialog:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->isProtocolShowing:Z

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->onConfigurationChanged(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public hasAcceptLaunchProtocol()Z
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->hasAcceptLaunchProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAcceptProtocol()Z
    .locals 1

    .line 494
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mHasShowProtocolLauncher:Z

    return v0
.end method

.method public declared-synchronized init(Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->hasInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 141
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mApplicationContext:Landroid/content/Context;

    .line 142
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->init(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->hasInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isHideWebViewLogo()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mHideWebViewLogo:Z

    return v0
.end method

.method public isProtocolShowing()Z
    .locals 1

    .line 665
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->isProtocolShowing:Z

    return v0
.end method

.method final notShowCallback(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 550
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 551
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$11;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$11;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestory()V
    .locals 2

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mContentDialog:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mContentDialog:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 634
    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mContentDialog:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    .line 636
    :try_start_1
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mAlerterEx:Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    if-eqz v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mAlerterEx:Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->onDismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 641
    :catchall_1
    :cond_1
    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mAlerterEx:Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    return-void
.end method

.method public onExit()V
    .locals 2

    const/4 v0, 0x0

    .line 645
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->hasInit:Z

    const/4 v1, 0x0

    .line 646
    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mApplicationContext:Landroid/content/Context;

    .line 647
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mHasShowProtocolLauncher:Z

    .line 648
    sput-object v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 682
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->isProtocolShowing:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "isProtocolShowing"

    .line 684
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->isProtocolDialogReShow:Z

    const-string v0, "protocol_view_style"

    .line 685
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mLastViewStyle:I

    const-string v0, "protocol_scene"

    .line 686
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/Scene;->valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/external/protocol/Scene;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mLastScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    const-string v0, "uid"

    .line 687
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p2, 0x0

    .line 689
    iput-boolean p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->isProtocolDialogReShow:Z

    .line 692
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->rebuildDialog(Landroid/app/Activity;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 673
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->isProtocolShowing:Z

    if-eqz v0, :cond_0

    const-string v1, "isProtocolShowing"

    .line 674
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 675
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mLastViewStyle:I

    const-string v1, "protocol_view_style"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 676
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mLastScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/Scene;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "protocol_scene"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mUserId:Ljava/lang/String;

    const-string v1, "uid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final removeCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mConcreteCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 725
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mActivityReference:Ljava/lang/ref/SoftReference;

    .line 726
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->init(Landroid/app/Activity;)V

    return-void
.end method

.method public final setCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mConcreteCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mConcreteCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setHasCustomProtocol(Z)V
    .locals 0

    .line 661
    iput-boolean p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->hasCustomProtocol:Z

    return-void
.end method

.method public setHideWebViewLogo(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mHideWebViewLogo:Z

    return-void
.end method

.method public setProp(Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;)V
    .locals 2

    const-string v0, "M"

    const-string v1, "setProp"

    .line 152
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    .line 154
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mProvider:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->setProp(Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;)V

    return-void
.end method

.method final setProtocolShowing(Z)V
    .locals 0

    .line 669
    iput-boolean p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->isProtocolShowing:Z

    return-void
.end method

.method public showProtocol()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mActivityReference:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocol(Landroid/app/Activity;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public showProtocol(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "M"

    const-string v1, "showProtocol"

    .line 436
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$1;)V

    sget-object v1, Lcom/netease/ntunisdk/external/protocol/Scene;->REVIEW:Lcom/netease/ntunisdk/external/protocol/Scene;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->setScene(Lcom/netease/ntunisdk/external/protocol/Scene;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$10;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$10;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->submitTask(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;)V

    .line 457
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->setCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$OnProtocolCallback;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 486
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->execute([Ljava/lang/Object;)Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;

    return-void
.end method

.method public showProtocolIfNeed(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showProtocol >> uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "M"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/netease/ntunisdk/external/protocol/Scene;->LOGIN:Lcom/netease/ntunisdk/external/protocol/Scene;

    .line 324
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$1;)V

    sget-object v1, Lcom/netease/ntunisdk/external/protocol/Scene;->LOGIN:Lcom/netease/ntunisdk/external/protocol/Scene;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->setScene(Lcom/netease/ntunisdk/external/protocol/Scene;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->submitTask(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->setCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$OnProtocolCallback;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 402
    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->execute([Ljava/lang/Object;)Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;

    return-void
.end method

.method public showProtocolWhenLaunch()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mActivityReference:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolWhenLaunch(Landroid/app/Activity;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public showProtocolWhenLaunch(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "M"

    const-string v1, "showProtocolWhenLaunch"

    .line 204
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$1;)V

    sget-object v1, Lcom/netease/ntunisdk/external/protocol/Scene;->LAUNCHER:Lcom/netease/ntunisdk/external/protocol/Scene;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->setScene(Lcom/netease/ntunisdk/external/protocol/Scene;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;)V

    .line 206
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->submitTask(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;)V

    .line 236
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->setCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$OnProtocolCallback;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 270
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->execute([Ljava/lang/Object;)Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;

    return-void
.end method

.method public syncClasses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 709
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "M"

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 710
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 711
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "syncClasses start"

    .line 715
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;

    invoke-direct {v0}, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;-><init>()V

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/SyncClassesTask;->start()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "no need upload classes"

    .line 712
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

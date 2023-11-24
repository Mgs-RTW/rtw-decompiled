.class public Lcom/netease/androidcrashhandler/NTCrashHunterKit;
.super Ljava/lang/Object;
.source "NTCrashHunterKit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CrashHunterProxy"

.field private static isLoadLibrarySuccess:Z = true

.field private static sProxy:Lcom/netease/androidcrashhandler/NTCrashHunterKit;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

.field private mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

.field private mIsInit:Z

.field private mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

.field private mLastTimeParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    .line 54
    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mLastTimeParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    .line 56
    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIsInit:Z

    .line 65
    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

    .line 67
    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

    return-void
.end method

.method public static sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;
    .locals 1

    .line 98
    sget-object v0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sProxy:Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sProxy:Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    .line 102
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sProxy:Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    return-object v0
.end method


# virtual methods
.method public addExtensionInfo(Lorg/json/JSONObject;)V
    .locals 1

    .line 464
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->getInstance()Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->addExtensionInfo(Lorg/json/JSONObject;)V

    return-void
.end method

.method public addFiles(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/androidcrashhandler/other/NTAssociatedFile;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 433
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_1

    .line 437
    :cond_0
    new-instance v0, Lcom/netease/androidcrashhandler/other/OtherCore;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/androidcrashhandler/other/OtherCore;-><init>(Landroid/content/Context;)V

    .line 439
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;

    .line 440
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getSrcFilePath()Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getSrcContent()Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getDesFileName()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 448
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 449
    invoke-virtual {v0, v2, v1}, Lcom/netease/androidcrashhandler/other/OtherCore;->addFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 452
    invoke-virtual {v0, v3, v1}, Lcom/netease/androidcrashhandler/other/OtherCore;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_5
    invoke-static {}, Lcom/netease/androidcrashhandler/other/OtherProxy;->getInstance()Lcom/netease/androidcrashhandler/other/OtherProxy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/other/OtherProxy;->put(Lcom/netease/androidcrashhandler/other/OtherCore;)V

    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public frameCallback()V
    .locals 1

    .line 578
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->frameCallback()V

    return-void
.end method

.method public frameCallbackLikeGame()V
    .locals 1

    .line 582
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->frameCallbackLikeGame()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUploadFileDir()Ljava/lang/String;
    .locals 2

    .line 473
    sget-object v0, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    .line 475
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getmCurrentParamsInfo()Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    return-object v0
.end method

.method public getmLastTimeParamsInfo()Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mLastTimeParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 106
    iput-object p1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {}, Lcom/netease/androidcrashhandler/util/LogUtils;->setDebug()V

    .line 108
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->init(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 109
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIsInit:Z

    return-void
.end method

.method public initWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/other/NTAssociatedFile;
    .locals 1

    .line 354
    new-instance v0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;

    invoke-direct {v0, p3, p2, p1}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public initWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/other/NTAssociatedFile;
    .locals 1

    .line 368
    new-instance v0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;

    invoke-direct {v0, p3, p2, p1}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "obfu"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 371
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->getInstance()Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->addObfuFileName(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public isContainSpecialFile([Ljava/lang/String;)Z
    .locals 4

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [isLastTimeCrash] start"

    .line 515
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 519
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "trace"

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashHunterProxy [isLastTimeCrash] sUploadFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "trace"

    const-string v1, "CrashHunterProxy [isLastTimeCrash] sUploadFilePath is error"

    .line 527
    invoke-static {p1, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 532
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    new-instance v2, Lcom/netease/androidcrashhandler/NTCrashHunterKit$1;

    invoke-direct {v2, p0, p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit$1;-><init>(Lcom/netease/androidcrashhandler/NTCrashHunterKit;[Ljava/lang/String;)V

    .line 551
    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 553
    array-length p1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "trace"

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashHunterProxy [isLastTimeCrash] Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    const-string p1, "trace"

    const-string v1, "CrashHunterProxy [isLastTimeCrash] No crashes occurred last time"

    .line 520
    invoke-static {p1, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isInit()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIsInit:Z

    return v0
.end method

.method public isLag()V
    .locals 1

    .line 732
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->isLag()V

    return-void
.end method

.method public isLastTimeAnr()Z
    .locals 4

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [isLastTimeAnr] start"

    .line 503
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 504
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".anr"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 505
    invoke-virtual {p0, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->isContainSpecialFile([Ljava/lang/String;)Z

    move-result v0

    const-string v1, "trace"

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashHunterProxy [isLastTimeAnr] result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isLastTimeCrash()Z
    .locals 4

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [isLastTimeCrash] start"

    .line 491
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 492
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".aci"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ".dmp"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 493
    invoke-virtual {p0, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->isContainSpecialFile([Ljava/lang/String;)Z

    move-result v0

    const-string v1, "trace"

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashHunterProxy [isLastTimeCrash] result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isOpenBreakpad(Z)V
    .locals 1

    .line 566
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/init/InitProxy;->setmIsOpenBreakpad(Z)V

    return-void
.end method

.method public postFile(Lcom/netease/androidcrashhandler/other/NTAssociatedFile;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/androidcrashhandler/other/NTAssociatedFile;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/androidcrashhandler/other/NTAssociatedFile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [postFile] start"

    .line 380
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 382
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 386
    :cond_0
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getSrcFilePath()Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getSrcContent()Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getDesFileName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "trace"

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CrashHunterProxy [postFile] mainFileSrcPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mainFileDesName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mainFileSrcContent isEmpty ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return-void

    .line 396
    :cond_3
    new-instance v2, Lcom/netease/androidcrashhandler/other/OtherCore;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/netease/androidcrashhandler/other/OtherCore;-><init>(Landroid/content/Context;)V

    .line 397
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 398
    invoke-virtual {v2, v0, p1}, Lcom/netease/androidcrashhandler/other/OtherCore;->addMainFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 401
    invoke-virtual {v2, v1, p1}, Lcom/netease/androidcrashhandler/other/OtherCore;->addMainInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    if-eqz p2, :cond_a

    .line 405
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 406
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;

    .line 407
    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getSrcFilePath()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getSrcContent()Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getDesFileName()Ljava/lang/String;

    move-result-object p2

    .line 411
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_1

    .line 415
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 416
    invoke-virtual {v2, v0, p2}, Lcom/netease/androidcrashhandler/other/OtherCore;->addFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 418
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 419
    invoke-virtual {v2, v1, p2}, Lcom/netease/androidcrashhandler/other/OtherCore;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 425
    :cond_a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 426
    invoke-virtual {v2, p3}, Lcom/netease/androidcrashhandler/other/OtherCore;->setErrorType(Ljava/lang/String;)V

    .line 429
    :cond_b
    invoke-static {}, Lcom/netease/androidcrashhandler/other/OtherProxy;->getInstance()Lcom/netease/androidcrashhandler/other/OtherProxy;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/netease/androidcrashhandler/other/OtherProxy;->put(Lcom/netease/androidcrashhandler/other/OtherCore;)V

    return-void

    :cond_c
    :goto_2
    return-void
.end method

.method public safelyBindCondition(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "trace"

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NTCrashHunterKit [safelyBindCondition] key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->addTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public safelyUnbindCondition(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "trace"

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NTCrashHunterKit [safelyUnbindCondition] key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->removeTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setBranch(Ljava/lang/String;)V
    .locals 3

    const-string v0, "trace"

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NTCrashHunterKit [setBranch] branch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    const-string v1, "branch"

    invoke-virtual {v0, v1, p1}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->addTag(Ljava/lang/String;Ljava/lang/String;)Z

    .line 269
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/init/InitProxy;->setmBranch(Ljava/lang/String;)V

    return-void
.end method

.method public setCpuIntervalThreshold(F)V
    .locals 1

    .line 724
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setCpuIntervalThreshold(F)V

    return-void
.end method

.method public setCpuSurgeThreshold(F)V
    .locals 1

    .line 720
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setCpuSurgeThreshold(F)V

    return-void
.end method

.method public setCpuThreshold(F)V
    .locals 1

    .line 716
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setCpuThreshold(F)V

    return-void
.end method

.method public setFpsThreshold(I)V
    .locals 1

    .line 570
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setFpsThreshold(I)V

    return-void
.end method

.method public setIPrePostCallBack(Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

    return-void
.end method

.method public setIsOpenLagLog(I)V
    .locals 1

    .line 748
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setIsOpenLog(I)V

    return-void
.end method

.method public setJavaCrashCallBack(Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

    return-void
.end method

.method public setLazyTime(I)V
    .locals 1

    .line 736
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setLazyTime(I)V

    return-void
.end method

.method public setMaxCatchTime(I)V
    .locals 1

    .line 728
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setMaxCatchTime(I)V

    return-void
.end method

.method public setNTEventOccurCallBackContent()V
    .locals 1

    .line 740
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setNTEventOccurCallBackContent()V

    return-void
.end method

.method public setNTEventOccurCallBackFile()V
    .locals 1

    .line 744
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setNTEventOccurCallBackFile()V

    return-void
.end method

.method public setOpenCPUMonitor(Z)V
    .locals 1

    .line 712
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setOpenCPUMonitor(Z)V

    return-void
.end method

.method public setOpenFPSMonitor(Z)V
    .locals 1

    .line 708
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setOpenFPSMonitor(Z)V

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    :cond_0
    const-string v0, "trace"

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "client_v"

    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-static {p2}, Lcom/netease/androidcrashhandler/util/CUtil;->checkAndReset(Ljava/lang/String;)V

    const-string v0, "res_version"

    .line 248
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/init/InitProxy;->getResVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "engine_version"

    .line 249
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/init/InitProxy;->getEngineVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "res_version"

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/androidcrashhandler/init/InitProxy;->setResVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "engine_version"

    .line 254
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/androidcrashhandler/init/InitProxy;->setEngineVersion(Ljava/lang/String;)V

    .line 263
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setParamToLastTimeParamsInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mLastTimeParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    if-nez v0, :cond_0

    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mLastTimeParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSoParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "trace"

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [setSoParam] key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "callback_so_path"

    .line 299
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netease/androidcrashhandler/init/InitProxy;->setCallbackSoPath(Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setSoPath(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v0, "callback_method_name"

    .line 303
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 304
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netease/androidcrashhandler/init/InitProxy;->setCallbackMethodName(Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setSoCallBackMethod()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p1, "trace"

    const-string p2, "CrashHunterProxy [setSoParam] param error"

    .line 295
    invoke-static {p1, p2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2

    .line 336
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/init/InitProxy;->setHasSetUrl(Z)V

    .line 338
    invoke-static {}, Lcom/netease/androidcrashhandler/net/NetProxy;->getInstance()Lcom/netease/androidcrashhandler/net/NetProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/net/NetProxy;->setURL(Ljava/lang/String;)V

    const-string v0, ".easebar."

    .line 340
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 341
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/config/ConfigCore;->changeToEasebar()V

    :cond_0
    return-void
.end method

.method public startHuntingCrash()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [start] \u521d\u59cb\u5316\u6a21\u5757\u542f\u52a8"

    .line 117
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [start] \u7f51\u7edc\u6a21\u5757\u542f\u52a8"

    .line 120
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;->getInstance()Lcom/netease/androidcrashhandler/wifi4g/WifiCore;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;->init(Landroid/content/Context;)V

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [start] \u4efb\u52a1\u6a21\u5757\u542f\u52a8\uff0c\u542f\u52a8\u7ebf\u7a0b\u6c60\uff0c\u5185\u90e8\u4f1a\u5c06\u5df2\u6709\u7684zip\u5305\u52a0\u5165\u5230\u4efb\u52a1\u961f\u5217"

    .line 124
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/netease/androidcrashhandler/task/TaskProxy;->getInstances()Lcom/netease/androidcrashhandler/task/TaskProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/task/TaskProxy;->start()V

    .line 129
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->init(Landroid/content/Context;)V

    .line 130
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->fresh()V

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [start] \u914d\u7f6e\u6587\u4ef6\u6a21\u5757\u542f\u52a8"

    .line 134
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->start()V

    .line 145
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->start_t()V

    return-void
.end method

.method public startLagMonitor()V
    .locals 3

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [startLagMonitor] start"

    .line 586
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "trace"

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [startLagMonitor] \u5361\u987f\u529f\u80fd\u662f\u5426\u5f00\u542f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/config/ConfigCore;->ismLagEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->ismLagEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [startLagMonitor] \u5361\u987f\u529f\u80fd\u5f00\u542f"

    .line 590
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->startLagMonitor()V

    goto :goto_0

    :cond_0
    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [startLagMonitor] \u5361\u987f\u529f\u80fd\u5173\u95ed"

    .line 594
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startLagMonitor(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [startLagMonitor] start"

    .line 599
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "trace"

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [startLagMonitor] \u5361\u987f\u529f\u80fd\u662f\u5426\u5f00\u542f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/config/ConfigCore;->ismLagEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->ismLagEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [startLagMonitor] \u5361\u987f\u529f\u80fd\u5f00\u542f"

    .line 603
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "trace"

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [startLagMonitor] params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "openLagLog"

    .line 607
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "openLagLog"

    .line 608
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "trace"

    .line 609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CrashHunterProxy [startLagMonitor] \u8bbe\u7f6e openLagLog="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {p0, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setIsOpenLagLog(I)V

    goto :goto_0

    .line 615
    :cond_0
    invoke-virtual {p0, v2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setIsOpenLagLog(I)V

    :cond_1
    :goto_0
    const-string v0, "openFPSMonitor"

    .line 619
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "openFPSMonitor"

    .line 620
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "trace"

    .line 621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CrashHunterProxy [startLagMonitor] \u8bbe\u7f6e openFPSMonitor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 624
    invoke-virtual {p0, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setOpenFPSMonitor(Z)V

    goto :goto_1

    .line 627
    :cond_2
    invoke-virtual {p0, v2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setOpenFPSMonitor(Z)V

    :cond_3
    :goto_1
    const-string v0, "openCPUMonitor"

    .line 631
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "openCPUMonitor"

    .line 632
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "trace"

    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CrashHunterProxy [startLagMonitor] \u8bbe\u7f6e openCPUMonitor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 636
    invoke-virtual {p0, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setOpenCPUMonitor(Z)V

    goto :goto_2

    .line 639
    :cond_4
    invoke-virtual {p0, v2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setOpenCPUMonitor(Z)V

    :cond_5
    :goto_2
    const-string v0, "fpsThreshold"

    .line 643
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "fpsThreshold"

    .line 644
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashHunterProxy [startLagMonitor] \u8bbe\u7f6e fpsThreshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 649
    invoke-virtual {p0, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setFpsThreshold(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "trace"

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashHunterProxy [startLagMonitor] \u8bbe\u7f6e fpsThreshold Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    const-string v0, "cpuThreshold"

    .line 657
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "cpuThreshold"

    .line 658
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashHunterProxy [startLagMonitor] \u8bbe\u7f6e cpuThreshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 663
    invoke-virtual {p0, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setCpuThreshold(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v1, "trace"

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashHunterProxy [startLagMonitor] \u8bbe\u7f6e cpuThreshold Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_4
    const-string v0, "cpuSurgeThreshold"

    .line 671
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "cpuSurgeThreshold"

    .line 672
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashHunterProxy [startLagMonitor] \u8bbe\u7f6e cpuSurgeThreshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 677
    invoke-virtual {p0, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setCpuSurgeThreshold(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v1, "trace"

    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashHunterProxy [startLagMonitor] \u8bbe\u7f6e cpuSurgeThreshold Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_5
    const-string v0, "cpuIntervalThreshold"

    .line 686
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "cpuIntervalThreshold"

    .line 687
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "trace"

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [startLagMonitor] \u8bbe\u7f6e cpuIntervalThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :try_start_3
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 692
    invoke-virtual {p0, p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setCpuIntervalThreshold(F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    const-string v0, "trace"

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [startLagMonitor] \u8bbe\u7f6e cpuIntervalThreshold Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 700
    :cond_9
    :goto_6
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->startLagMonitor()V

    goto :goto_7

    :cond_a
    const-string p1, "trace"

    const-string v0, "CrashHunterProxy [startLagMonitor] \u5361\u987f\u529f\u80fd\u5173\u95ed"

    .line 703
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method public start_t()V
    .locals 3

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [start_t] start"

    .line 153
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "trace"

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [start_t] enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/config/ConfigCore;->ismEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->ismEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [start_t] \u5c06\u4e0a\u6b21\u542f\u52a8\u7684\u53c2\u6570\u6587\u4ef6\u8bfb\u53d6\u5230mLastTimeParamsInfo"

    .line 163
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mLastTimeParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mLastTimeParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    .line 166
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mLastTimeParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->getParamFromLoaclFile()V

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [start_t] \u5220\u9664\u4e0a\u6b21\u542f\u52a8\u7684\u53c2\u6570\u6587\u4ef6"

    .line 169
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mLastTimeParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->deleteParamFile()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    :cond_1
    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [start_t] \u6784\u5efa\u5f53\u6b21\u542f\u52a8\u53c2\u6570\u6587\u4ef6"

    .line 178
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->writeToLocalFile()V

    .line 185
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

    if-eqz v0, :cond_2

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [start_t] \u542f\u52a8\u540e\uff0c\u5728\u538b\u7f29\u4e0a\u4f20\u524d\uff0c\u56de\u8c03\u7528\u6237\u65b9\u6cd5"

    .line 186
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

    invoke-interface {v0}, Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;->prePostHandle()V

    :cond_2
    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [start_t] \u5c06\u6563\u6587\u4ef6\u5c01\u88c5\u6210zip\u5165\u961f\u5217"

    .line 195
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->getInstance()Lcom/netease/androidcrashhandler/zip/ZipProxy;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->zip(ZLjava/lang/String;)V

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [start_t] di\u6587\u4ef6\u6a21\u5757\u542f\u52a8"

    .line 199
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->start()V

    .line 205
    invoke-static {}, Lcom/netease/androidcrashhandler/other/OtherProxy;->getInstance()Lcom/netease/androidcrashhandler/other/OtherProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/other/OtherProxy;->start()V

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [start_t] ANR\u6a21\u5757\u542f\u52a8\uff0c\u83b7\u53d6anr\u65e5\u5fd7"

    .line 208
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/AnrProxy;->getInstance()Lcom/netease/androidcrashhandler/anr/AnrProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/anr/AnrProxy;->start()V

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [start_t] Java\u5d29\u6e83\u6355\u6349\u673a\u5236\u542f\u52a8"

    .line 215
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->getInstance()Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->setJavaCrashCallBack(Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;)V

    .line 217
    invoke-static {}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->getInstance()Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->start()V

    .line 226
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->start(Landroid/content/Context;)V

    .line 235
    invoke-static {}, Lcom/netease/androidcrashhandler/util/CUtil;->getProcMaps()V

    :cond_3
    return-void
.end method

.method public stopLagMonitor()V
    .locals 1

    .line 574
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->stopLagMonitor()V

    return-void
.end method

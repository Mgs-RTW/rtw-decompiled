.class public Lcom/netease/neox/PluginUniSDK;
.super Lcom/netease/neox/PluginBase;
.source "PluginUniSDK.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnCodeScannerListener;
.implements Lcom/netease/ntunisdk/base/OnConnectListener;
.implements Lcom/netease/ntunisdk/base/OnContinueListener;
.implements Lcom/netease/ntunisdk/base/OnControllerListener;
.implements Lcom/netease/ntunisdk/base/OnExitListener;
.implements Lcom/netease/ntunisdk/base/OnExtendFuncListener;
.implements Lcom/netease/ntunisdk/base/OnFinishInitListener;
.implements Lcom/netease/ntunisdk/base/OnLoginDoneListener;
.implements Lcom/netease/ntunisdk/base/OnLogoutDoneListener;
.implements Lcom/netease/ntunisdk/base/OnOrderCheckListener;
.implements Lcom/netease/ntunisdk/base/OnProtocolFinishListener;
.implements Lcom/netease/ntunisdk/base/OnPushListener;
.implements Lcom/netease/ntunisdk/base/OnQRCodeListener;
.implements Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;
.implements Lcom/netease/ntunisdk/base/OnQuestListener;
.implements Lcom/netease/ntunisdk/base/OnReceiveMsgListener;
.implements Lcom/netease/ntunisdk/base/OnShareListener;
.implements Lcom/netease/ntunisdk/base/OnShowViewListener;
.implements Lcom/netease/ntunisdk/base/OnStartupListener;
.implements Lcom/netease/ntunisdk/base/OnVerifyListener;
.implements Lcom/netease/ntunisdk/base/OnWebViewListener;
.implements Lcom/netease/ntunisdk/base/QueryFriendListener;
.implements Lcom/netease/ntunisdk/base/QueryRankListener;
.implements Lcom/netease/download/listener/DownloadListener;


# instance fields
.field private m_context:Landroid/app/Activity;

.field private m_dl_progress:Ljava/lang/String;

.field private m_is_dl_init:Z

.field private m_is_init:Z

.field private m_is_initing:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/netease/neox/PluginBase;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    const/4 v1, 0x0

    .line 66
    iput-boolean v1, p0, Lcom/netease/neox/PluginUniSDK;->m_is_init:Z

    .line 67
    iput-boolean v1, p0, Lcom/netease/neox/PluginUniSDK;->m_is_initing:Z

    .line 68
    iput-boolean v1, p0, Lcom/netease/neox/PluginUniSDK;->m_is_dl_init:Z

    .line 69
    iput-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_dl_progress:Ljava/lang/String;

    return-void
.end method

.method private static native NativeOnCancelLocalPushFinished(Z)V
.end method

.method private static native NativeOnCodeScannerFinish(ILjava/lang/String;)V
.end method

.method private static native NativeOnConnectToChannelFinished(I)V
.end method

.method private static native NativeOnContinueGame()V
.end method

.method private static native NativeOnCreateQRCodeDone(Ljava/lang/String;)V
.end method

.method private static native NativeOnDisConnectToChannelFinished(I)V
.end method

.method private static native NativeOnDownloadFinish(Ljava/lang/String;)V
.end method

.method private static native NativeOnDownloadInited()V
.end method

.method private static native NativeOnDownloadProgress(Ljava/lang/String;)V
.end method

.method private static native NativeOnExitApp()V
.end method

.method private static native NativeOnExtendFuncCall(Ljava/lang/String;)V
.end method

.method private static native NativeOnFinishInit(I)V
.end method

.method private static native NativeOnGetUserPushFinished(Z)V
.end method

.method private static native NativeOnLoginDone(I)V
.end method

.method private static native NativeOnLogoutDone(I)V
.end method

.method private static native NativeOnOpenExitViewFailed()V
.end method

.method private static native NativeOnOrderCheckDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
.end method

.method private static native NativeOnOrderConsumeDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
.end method

.method private static native NativeOnPadKeyDown(ILcom/netease/ntunisdk/base/PadEvent;)V
.end method

.method private static native NativeOnPadKeyPressure(IFLcom/netease/ntunisdk/base/PadEvent;)V
.end method

.method private static native NativeOnPadKeyUp(ILcom/netease/ntunisdk/base/PadEvent;)V
.end method

.method private static native NativeOnPadLeftStick(FFLcom/netease/ntunisdk/base/PadEvent;)V
.end method

.method private static native NativeOnPadRightStick(FFLcom/netease/ntunisdk/base/PadEvent;)V
.end method

.method private static native NativeOnPadSateEvent(Lcom/netease/ntunisdk/base/PadEvent;)V
.end method

.method private static native NativeOnProtocolFinish(I)V
.end method

.method private static native NativeOnQueryApplyFriendFinished(Z)V
.end method

.method private static native NativeOnQueryAvailablesInviteesFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V
.end method

.method private static native NativeOnQueryFriendListFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V
.end method

.method private static native NativeOnQueryFriendListInGameFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V
.end method

.method private static native NativeOnQueryInviteFriendListFinished([Ljava/lang/String;)V
.end method

.method private static native NativeOnQueryInviterListFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V
.end method

.method private static native NativeOnQueryIsDarenUpdated(Z)V
.end method

.method private static native NativeOnQueryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V
.end method

.method private static native NativeOnQueryRankFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V
.end method

.method private static native NativeOnQuerySkuDetailsFinished([Lcom/netease/ntunisdk/base/SkuDetailsInfo;)V
.end method

.method private static native NativeOnQueryUpdateAchievement(Z)V
.end method

.method private static native NativeOnQueryUpdateRankFinished(Z)V
.end method

.method private static native NativeOnQuestCompleted(Ljava/lang/String;)V
.end method

.method private static native NativeOnReceiveMsgEnterGame(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native NativeOnReceiveMsgNotification()V
.end method

.method private static native NativeOnSelectChannelOptionFinished(Z)V
.end method

.method private static native NativeOnSendLocalNotificationFinished(I)V
.end method

.method private static native NativeOnSendPushNotificationFinished(Z)V
.end method

.method private static native NativeOnSetUserPushFinished(Z)V
.end method

.method private static native NativeOnShareFinished(Z)V
.end method

.method private static native NativeOnShowViewClosed()V
.end method

.method private static native NativeOnShowViewFailed()V
.end method

.method private static native NativeOnShowViewOpened()V
.end method

.method private static native NativeOnShowViewRewarded()V
.end method

.method private static native NativeOnStartupClickSplash()V
.end method

.method private static native NativeOnStartupDone()V
.end method

.method private static native NativeOnStartupGetNoticeMsgDone(Ljava/lang/String;)V
.end method

.method private static native NativeOnVerifyFailure(ILjava/lang/String;)V
.end method

.method private static native NativeOnVerifySuccess(ILjava/lang/String;)V
.end method

.method private static native NativeOnWebViewNativeCall(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method static synthetic access$000(Lcom/netease/neox/PluginUniSDK;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_dl_init:Z

    return p0
.end method

.method static synthetic access$002(Lcom/netease/neox/PluginUniSDK;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/netease/neox/PluginUniSDK;->m_is_dl_init:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netease/neox/PluginUniSDK;)Landroid/app/Activity;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 58
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnDownloadInited()V

    return-void
.end method

.method private static bitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 183
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 186
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 190
    :cond_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method public DRPF(Ljava/lang/String;)I
    .locals 1

    .line 944
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->DRPF(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public OnWebViewNativeCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 575
    invoke-static {p1, p2}, Lcom/netease/neox/PluginUniSDK;->NativeOnWebViewNativeCall(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public codeScannerFinish(ILjava/lang/String;)V
    .locals 0

    .line 315
    invoke-static {p1, p2}, Lcom/netease/neox/PluginUniSDK;->NativeOnCodeScannerFinish(ILjava/lang/String;)V

    return-void
.end method

.method public continueGame()V
    .locals 0

    .line 335
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnContinueGame()V

    return-void
.end method

.method public createQRCodeDone(Ljava/lang/String;)V
    .locals 0

    .line 495
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnCreateQRCodeDone(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 792
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->exit()V

    return-void
.end method

.method public exitApp()V
    .locals 1

    .line 370
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnExitApp()V

    .line 371
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->exit()V

    .line 372
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public extendFuncDownload(Ljava/lang/String;)V
    .locals 1

    .line 680
    iget-boolean v0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_dl_init:Z

    if-eqz v0, :cond_0

    .line 681
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getDLInst()Lcom/netease/ntunisdk/base/SdkDownload;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkDownload;->extendFunc(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public finishInit(I)V
    .locals 2

    .line 402
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnFinishInit(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 403
    :goto_0
    iput-boolean p1, p0, Lcom/netease/neox/PluginUniSDK;->m_is_init:Z

    .line 404
    iget-boolean p1, p0, Lcom/netease/neox/PluginUniSDK;->m_is_init:Z

    if-eqz p1, :cond_1

    .line 405
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setCodeScannerListener(Lcom/netease/ntunisdk/base/OnCodeScannerListener;I)V

    .line 406
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setConnectListener(Lcom/netease/ntunisdk/base/OnConnectListener;I)V

    .line 407
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setContinueListener(Lcom/netease/ntunisdk/base/OnContinueListener;I)V

    .line 408
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setControllerListener(Lcom/netease/ntunisdk/base/OnControllerListener;I)V

    .line 409
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setExitListener(Lcom/netease/ntunisdk/base/OnExitListener;I)V

    .line 410
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setExtendFuncListener(Lcom/netease/ntunisdk/base/OnExtendFuncListener;I)V

    .line 411
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setLoginListener(Lcom/netease/ntunisdk/base/OnLoginDoneListener;I)V

    .line 412
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setLogoutListener(Lcom/netease/ntunisdk/base/OnLogoutDoneListener;I)V

    .line 413
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setOrderListener(Lcom/netease/ntunisdk/base/OnOrderCheckListener;I)V

    .line 414
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setOnProtocolFinishListener(Lcom/netease/ntunisdk/base/OnProtocolFinishListener;I)V

    .line 415
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPushListener(Lcom/netease/ntunisdk/base/OnPushListener;I)V

    .line 416
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setQRCodeListener(Lcom/netease/ntunisdk/base/OnQRCodeListener;I)V

    .line 417
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setQuerySkuDetailsListener(Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;I)V

    .line 418
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setQuestListener(Lcom/netease/ntunisdk/base/OnQuestListener;I)V

    .line 419
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setReceiveMsgListener(Lcom/netease/ntunisdk/base/OnReceiveMsgListener;I)V

    .line 420
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setShareListener(Lcom/netease/ntunisdk/base/OnShareListener;I)V

    .line 421
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setShowViewListener(Lcom/netease/ntunisdk/base/OnShowViewListener;I)V

    .line 422
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setStartupListener(Lcom/netease/ntunisdk/base/OnStartupListener;I)V

    .line 423
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setVerifyListener(Lcom/netease/ntunisdk/base/OnVerifyListener;I)V

    .line 424
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setWebViewListener(Lcom/netease/ntunisdk/base/OnWebViewListener;I)V

    .line 425
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setQueryFriendListener(Lcom/netease/ntunisdk/base/QueryFriendListener;I)V

    .line 426
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setQueryRankListener(Lcom/netease/ntunisdk/base/QueryRankListener;I)V

    .line 428
    :cond_1
    iput-boolean v0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_initing:Z

    return-void
.end method

.method public getALinkParamsKeys(Lcom/netease/ntunisdk/base/ShareInfo;)[Ljava/lang/String;
    .locals 1

    .line 1284
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getALinkParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1285
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1286
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1287
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getALinkParamsValues(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1293
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getALinkParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1294
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1295
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1296
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1297
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAltTextMsgKeys(Lcom/netease/ntunisdk/base/ShareInfo;)[Ljava/lang/String;
    .locals 1

    .line 1315
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getAltTextMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1316
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1317
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1318
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAltTextMsgValues(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1324
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getAltTextMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1325
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1326
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1327
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1328
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 2

    .line 1546
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1547
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppChannel()Ljava/lang/String;
    .locals 1

    .line 784
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppIconResId()I
    .locals 1

    .line 1554
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppIconResId(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    .line 1558
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1559
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 2

    .line 1566
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1567
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 1

    .line 1574
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 2

    .line 1578
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1579
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArrPriceLocaleId(Lcom/netease/ntunisdk/base/OrderInfo;)[Ljava/lang/String;
    .locals 1

    .line 1245
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getArrPriceLocaleId()Ljava/lang/String;

    move-result-object p1

    .line 1246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, ";"

    .line 1248
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAuthTypeName()Ljava/lang/String;
    .locals 1

    .line 880
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getAuthTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCCPerformance()I
    .locals 1

    .line 924
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getCCPerformance()I

    move-result v0

    return v0
.end method

.method public getCCTypeByImsi()Ljava/lang/String;
    .locals 1

    .line 892
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getCCTypeByImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCCWindowState()I
    .locals 1

    .line 928
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getCCWindowState()I

    move-result v0

    return v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 780
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelByImsi()Ljava/lang/String;
    .locals 1

    .line 884
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannelByImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelByImsiEx()Ljava/lang/String;
    .locals 1

    .line 888
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannelByImsiEx()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCpuCore()Ljava/lang/String;
    .locals 2

    .line 1586
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getCpuCore()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1587
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuMhz()Ljava/lang/String;
    .locals 2

    .line 1594
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getCpuMhz()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1595
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuName()Ljava/lang/String;
    .locals 2

    .line 1602
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getCpuName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1603
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceUDID()Ljava/lang/String;
    .locals 2

    .line 1610
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getDeviceUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1611
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayPixels()[I
    .locals 3

    .line 1618
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getDisplayPixels(Landroid/content/Context;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1619
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    aget v1, v0, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aget v1, v0, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadSDKVersion()Ljava/lang/String;
    .locals 1

    .line 686
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getDLInst()Lcom/netease/ntunisdk/base/SdkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkDownload;->getDownloadSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFFChannelByPid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 868
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->getFFChannelByPid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getILinkParamsKeys(Lcom/netease/ntunisdk/base/ShareInfo;)[Ljava/lang/String;
    .locals 1

    .line 1346
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getILinkParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1347
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1348
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1349
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getILinkParamsValues(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1355
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getILinkParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1356
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1357
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1358
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1359
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLinkParamsKeys(Lcom/netease/ntunisdk/base/ShareInfo;)[Ljava/lang/String;
    .locals 1

    .line 1377
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLinkParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1378
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1379
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1380
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLinkParamsValues(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1386
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLinkParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1387
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1388
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1389
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1390
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLinkTextMsgKeys(Lcom/netease/ntunisdk/base/ShareInfo;)[Ljava/lang/String;
    .locals 1

    .line 1408
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLinkTextMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1409
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1410
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1411
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLinkTextMsgValues(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1417
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLinkTextMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1418
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1419
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1420
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1421
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 2

    .line 1626
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1627
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobildBrand()Ljava/lang/String;
    .locals 2

    .line 1634
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobildBrand()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1635
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileIMEI()Ljava/lang/String;
    .locals 2

    .line 1642
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1643
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileIMSI()Ljava/lang/String;
    .locals 2

    .line 1686
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1687
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileManufacturer()Ljava/lang/String;
    .locals 2

    .line 1650
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileManufacturer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1651
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileModel()Ljava/lang/String;
    .locals 2

    .line 1658
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileModel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1659
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileModel2()Ljava/lang/String;
    .locals 2

    .line 1666
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileModel2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1667
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileSDKVersion()I
    .locals 1

    .line 1674
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileSDKVersion()I

    move-result v0

    return v0
.end method

.method public getMobileVersion()Ljava/lang/String;
    .locals 2

    .line 1678
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1679
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "unisdk"

    return-object v0
.end method

.method public getNetworktype()Ljava/lang/String;
    .locals 2

    .line 1734
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->ntGetNetworktype(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1735
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNoticeMsgDone(Ljava/lang/String;)V
    .locals 0

    .line 555
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnStartupGetNoticeMsgDone(Ljava/lang/String;)V

    return-void
.end method

.method public getOrbitSessionId()Ljava/lang/String;
    .locals 1

    .line 690
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getDLInst()Lcom/netease/ntunisdk/base/SdkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkDownload;->getOrbitSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 788
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPlatform()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductListKeys()[Ljava/lang/String;
    .locals 2

    .line 1163
    invoke-static {}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductList()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1164
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1166
    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1167
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1168
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProductListValues([Ljava/lang/String;)[Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;
    .locals 4

    .line 1172
    invoke-static {}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductList()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1173
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    array-length v1, p1

    if-eqz v1, :cond_2

    array-length v1, p1

    .line 1174
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 1176
    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v1

    new-array v1, v1, [Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    const/4 v2, 0x0

    .line 1177
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 1178
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPropInt(Ljava/lang/String;I)I
    .locals 1

    .line 764
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getPropStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 756
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 752
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRamMemory()[Ljava/lang/String;
    .locals 2

    .line 1694
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getRamMemory(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1695
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSDKVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 904
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->getSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSdkPidKeys(Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;)[Ljava/lang/String;
    .locals 1

    .line 1184
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1186
    :cond_0
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1187
    iget-object p1, p1, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getSdkPidKeys(Lcom/netease/ntunisdk/base/OrderInfo;)[Ljava/lang/String;
    .locals 2

    .line 1226
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getSdkPids()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1227
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1229
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1230
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getSdkPids()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSdkPidValues(Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1191
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-eqz v0, :cond_2

    array-length v0, p2

    iget-object v1, p1, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1193
    :cond_0
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1194
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1195
    iget-object v2, p1, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    aget-object v3, p2, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSdkPidValues(Lcom/netease/ntunisdk/base/OrderInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1234
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getSdkPids()Ljava/util/Map;

    move-result-object p1

    .line 1235
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-eqz v0, :cond_2

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1237
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1238
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1239
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubTextMsgKeys(Lcom/netease/ntunisdk/base/ShareInfo;)[Ljava/lang/String;
    .locals 1

    .line 1470
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getSubTextMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1471
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1472
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1473
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubTextMsgValues(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1479
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getSubTextMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1480
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1481
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1482
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1483
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSurveyPaperLanguage()Ljava/lang/String;
    .locals 2

    .line 1702
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getSurveyPaperLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1703
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemLanguage()Ljava/lang/String;
    .locals 2

    .line 1710
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getSystemLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1711
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextMsgKeys(Lcom/netease/ntunisdk/base/ShareInfo;)[Ljava/lang/String;
    .locals 1

    .line 1439
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getTextMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1440
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1441
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1442
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextMsgValues(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1448
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getTextMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1449
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1450
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1451
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1452
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getToUserList(Lcom/netease/ntunisdk/base/ShareInfo;)[Ljava/lang/String;
    .locals 1

    .line 1501
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getToUserList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1502
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1503
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1504
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTransid()Ljava/lang/String;
    .locals 2

    .line 1718
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getTransid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1719
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 912
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnisdkDeviceId()Ljava/lang/String;
    .locals 2

    .line 1726
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getUnisdkDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1727
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 800
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 1

    .line 772
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasLogin()Z
    .locals 1

    .line 776
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public hasProduct(Ljava/lang/String;)Z
    .locals 0

    .line 1222
    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->hasProduct(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public initDownload()V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    new-instance v1, Lcom/netease/neox/PluginUniSDK$2;

    invoke-direct {v1, p0}, Lcom/netease/neox/PluginUniSDK$2;-><init>(Lcom/netease/neox/PluginUniSDK;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isBinded(Ljava/lang/String;)Z
    .locals 1

    .line 820
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->isBinded(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isCCRecordMic()Z
    .locals 1

    .line 1052
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->isCCRecordMic()Z

    move-result v0

    return v0
.end method

.method public isCCRecording()Z
    .locals 1

    .line 1048
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->isCCRecording()Z

    move-result v0

    return v0
.end method

.method public isDeviceRooted()Z
    .locals 1

    .line 1742
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDeviceRooted()Z

    move-result v0

    return v0
.end method

.method public isDomestic()Z
    .locals 1

    .line 1746
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDomestic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isEmulator()Z
    .locals 1

    .line 1750
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isEmulator(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isIPv4(Ljava/lang/String;)Z
    .locals 0

    .line 1754
    invoke-static {p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isIPv4(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInit()Z
    .locals 1

    .line 695
    iget-boolean v0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_init:Z

    return v0
.end method

.method public isMuMu()Z
    .locals 1

    .line 1758
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isMuMu()Z

    move-result v0

    return v0
.end method

.method public isNetworkAvailable()Z
    .locals 1

    .line 1762
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isTablet()Z
    .locals 1

    .line 1766
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isWifiConnect()Z
    .locals 1

    .line 1770
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isWifiConnect(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public loginDone(I)V
    .locals 0

    .line 433
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnLoginDone(I)V

    return-void
.end method

.method public logoutDone(I)V
    .locals 0

    .line 450
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnLogoutDone(I)V

    return-void
.end method

.method public newAccountInfo()Lcom/netease/ntunisdk/base/AccountInfo;
    .locals 1

    .line 1531
    new-instance v0, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/AccountInfo;-><init>()V

    return-object v0
.end method

.method public newAccountInfo(Ljava/lang/String;)Lcom/netease/ntunisdk/base/AccountInfo;
    .locals 1

    .line 1535
    new-instance v0, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/base/AccountInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public newOrderInfo(Lcom/netease/ntunisdk/base/OrderInfo;)Lcom/netease/ntunisdk/base/OrderInfo;
    .locals 1

    .line 1159
    new-instance v0, Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-object v0
.end method

.method public newOrderInfo(Ljava/lang/String;)Lcom/netease/ntunisdk/base/OrderInfo;
    .locals 1

    .line 1155
    new-instance v0, Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public newQueryRankInfo()Lcom/netease/ntunisdk/base/QueryRankInfo;
    .locals 1

    .line 1267
    new-instance v0, Lcom/netease/ntunisdk/base/QueryRankInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/QueryRankInfo;-><init>()V

    return-object v0
.end method

.method public newQueryRankInfo(Ljava/lang/String;)Lcom/netease/ntunisdk/base/QueryRankInfo;
    .locals 0

    .line 1271
    invoke-static {p1}, Lcom/netease/ntunisdk/base/QueryRankInfo;->jsonStr2Obj(Ljava/lang/String;)Lcom/netease/ntunisdk/base/QueryRankInfo;

    move-result-object p1

    return-object p1
.end method

.method public newShareInfo()Lcom/netease/ntunisdk/base/ShareInfo;
    .locals 1

    .line 1276
    new-instance v0, Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/ShareInfo;-><init>()V

    return-object v0
.end method

.method public newShareInfo(Ljava/lang/String;)Lcom/netease/ntunisdk/base/ShareInfo;
    .locals 0

    .line 1280
    invoke-static {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->jsonStr2Obj(Ljava/lang/String;)Lcom/netease/ntunisdk/base/ShareInfo;

    move-result-object p1

    return-object p1
.end method

.method public newSkuDetailsInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/base/SkuDetailsInfo;
    .locals 9

    .line 1541
    new-instance v8, Lcom/netease/ntunisdk/base/SkuDetailsInfo;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/netease/ntunisdk/base/SkuDetailsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public ntAntiAddiction(Ljava/lang/String;)V
    .locals 1

    .line 808
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntAntiAddiction(Ljava/lang/String;)V

    return-void
.end method

.method public ntApplyFriend(Ljava/lang/String;)V
    .locals 1

    .line 824
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntApplyFriend(Ljava/lang/String;)V

    return-void
.end method

.method public ntCCStartService()V
    .locals 1

    .line 916
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCCStartService()V

    return-void
.end method

.method public ntCCStopService()V
    .locals 1

    .line 920
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCCStopService()V

    return-void
.end method

.method public ntCallbackFail(Ljava/lang/String;)V
    .locals 1

    .line 1088
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCallbackFail(Ljava/lang/String;)V

    return-void
.end method

.method public ntCallbackSuccess(Ljava/lang/String;)V
    .locals 1

    .line 1084
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCallbackSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public ntCancelLocalNotification(I)V
    .locals 1

    .line 972
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCancelLocalNotification(I)V

    return-void
.end method

.method public ntCheckArgs(Lcom/netease/ntunisdk/base/ShareInfo;)Z
    .locals 1

    .line 852
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCheckArgs(Lcom/netease/ntunisdk/base/ShareInfo;)Z

    move-result p1

    return p1
.end method

.method public ntCheckOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 1

    .line 716
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCheckOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public ntCloseFlash()V
    .locals 1

    .line 1108
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCloseFlash()V

    return-void
.end method

.method public ntCloseWebView()V
    .locals 1

    .line 1100
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCloseWebView()V

    return-void
.end method

.method public ntCollectEvent(Ljava/lang/String;)V
    .locals 1

    .line 936
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCollectEvent(Ljava/lang/String;)V

    return-void
.end method

.method public ntConnectToChannel()V
    .locals 1

    .line 984
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntConnectToChannel()V

    return-void
.end method

.method public ntConsume(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 1

    .line 864
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntConsume(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public ntCreateQRCode(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 1134
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCreateQRCode(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public ntCreateQRCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1138
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCreateQRCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ntDeleteInviters([Ljava/lang/String;)V
    .locals 1

    .line 960
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntDeleteInviters(Ljava/util/List;)V

    return-void
.end method

.method public ntDisConnectFromChannel()V
    .locals 1

    .line 988
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntDisConnectFromChannel()V

    return-void
.end method

.method public ntDisplayAchievement()V
    .locals 1

    .line 1024
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntDisplayAchievement()V

    return-void
.end method

.method public ntDisplayLeaderboard(Ljava/lang/String;)V
    .locals 1

    .line 1020
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntDisplayLeaderboard(Ljava/lang/String;)V

    return-void
.end method

.method public ntDisplayQuests([I)V
    .locals 1

    .line 1036
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntDisplayQuests([I)V

    return-void
.end method

.method public ntDoSdkRealNameRegister()V
    .locals 1

    .line 812
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntDoSdkRealNameRegister()V

    return-void
.end method

.method public ntExtendFunc(Ljava/lang/String;)V
    .locals 1

    .line 1112
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V

    return-void
.end method

.method public ntFlushCustomEvents()V
    .locals 1

    .line 1064
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntFlushCustomEvents()V

    return-void
.end method

.method public ntGameLoginSuccess()V
    .locals 1

    .line 860
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGameLoginSuccess()V

    return-void
.end method

.method public ntGetAnnouncementInfo()V
    .locals 1

    .line 1072
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGetAnnouncementInfo()V

    return-void
.end method

.method public ntGetChannelID()Ljava/lang/String;
    .locals 1

    .line 996
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGetChannelID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ntGetCheckedOrders()[Lcom/netease/ntunisdk/base/OrderInfo;
    .locals 2

    .line 1124
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGetCheckedOrders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/netease/ntunisdk/base/OrderInfo;

    .line 1127
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/base/OrderInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ntGetNotice(Z)V
    .locals 1

    .line 1056
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGetNotice(Z)V

    return-void
.end method

.method public ntGetUsePushNotification()V
    .locals 1

    .line 976
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGetUsePushNotification()V

    return-void
.end method

.method public ntGuestBind()V
    .locals 1

    .line 816
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGuestBind()V

    return-void
.end method

.method public ntHasChannelConnected()Z
    .locals 1

    .line 992
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntHasChannelConnected()Z

    move-result v0

    return v0
.end method

.method public ntHasNotification()Z
    .locals 1

    .line 876
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntHasNotification()Z

    move-result v0

    return v0
.end method

.method public ntHasPlatform(Ljava/lang/String;)Z
    .locals 1

    .line 1080
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntHasPlatform(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public ntInit()V
    .locals 3

    .line 699
    iget-boolean v0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_init:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_initing:Z

    if-nez v0, :cond_0

    .line 701
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "SPLASH_PNG_SCALE_TYPE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 702
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntInit(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V

    const/4 v0, 0x1

    .line 703
    iput-boolean v0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_initing:Z

    :cond_0
    return-void
.end method

.method public ntInviteFriendList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 952
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntInviteFriendList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ntIsDarenUpdated()V
    .locals 1

    .line 872
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntIsDarenUpdated()V

    return-void
.end method

.method public ntLogin()V
    .locals 1

    .line 708
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntLogin()V

    return-void
.end method

.method public ntLogout()V
    .locals 1

    .line 724
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntLogout()V

    return-void
.end method

.method public ntMoreGame()V
    .locals 1

    .line 896
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntMoreGame()V

    return-void
.end method

.method public ntOpenEchoes()V
    .locals 1

    .line 1116
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenEchoes()V

    return-void
.end method

.method public ntOpenExitView()V
    .locals 1

    .line 748
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenExitView()V

    return-void
.end method

.method public ntOpenManager()V
    .locals 1

    .line 728
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenManager()V

    return-void
.end method

.method public ntOpenNearby()V
    .locals 1

    .line 736
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenNearby()V

    return-void
.end method

.method public ntOpenPauseView()V
    .locals 1

    .line 744
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenPauseView()V

    return-void
.end method

.method public ntOpenWebView(Ljava/lang/String;)V
    .locals 1

    .line 1096
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenWebView(Ljava/lang/String;)V

    return-void
.end method

.method public ntPrePay()V
    .locals 1

    .line 908
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntPrePay()V

    return-void
.end method

.method public ntPresentQRCodeScanner(Ljava/lang/String;I)V
    .locals 1

    .line 1044
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntPresentQRCodeScanner(Ljava/lang/String;I)V

    return-void
.end method

.method public ntPushGameVoice([B)V
    .locals 4

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\n\t\"methodId\": \"pushGameVoiceData\",\n\t\"size\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1150
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public ntQueryAvailablesInvitees()V
    .locals 1

    .line 832
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQueryAvailablesInvitees()V

    return-void
.end method

.method public ntQueryFriendList()V
    .locals 1

    .line 828
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQueryFriendList()V

    return-void
.end method

.method public ntQueryFriendListInGame()V
    .locals 1

    .line 900
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQueryFriendListInGame()V

    return-void
.end method

.method public ntQueryInventory()V
    .locals 1

    .line 856
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQueryInventory()V

    return-void
.end method

.method public ntQueryInviterList()V
    .locals 1

    .line 956
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQueryInviterList()V

    return-void
.end method

.method public ntQueryMyAccount()V
    .locals 1

    .line 836
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQueryMyAccount()V

    return-void
.end method

.method public ntQueryRank(Lcom/netease/ntunisdk/base/QueryRankInfo;)V
    .locals 1

    .line 840
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQueryRank(Lcom/netease/ntunisdk/base/QueryRankInfo;)V

    return-void
.end method

.method public ntQuerySkuDetails(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 712
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQuerySkuDetails(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public ntRemoveCheckedOrders(Ljava/lang/String;)V
    .locals 1

    .line 1120
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntRemoveCheckedOrders(Ljava/lang/String;)V

    return-void
.end method

.method public ntScannerQRCode(Ljava/lang/String;)V
    .locals 1

    .line 1142
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntScannerQRCode(Ljava/lang/String;)V

    return-void
.end method

.method public ntSelectChannelOption(I)V
    .locals 1

    .line 1000
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSelectChannelOption(I)V

    return-void
.end method

.method public ntSendLocalNotification(Ljava/lang/String;)V
    .locals 1

    .line 968
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSendLocalNotification(Ljava/lang/String;)V

    return-void
.end method

.method public ntSendProfile(Ljava/lang/String;Z)V
    .locals 1

    .line 1068
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSendProfile(Ljava/lang/String;Z)V

    return-void
.end method

.method public ntSendPushNotification(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 964
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSendPushNotification(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public ntSetFloatBtnVisible(Z)V
    .locals 1

    .line 740
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSetFloatBtnVisible(Z)V

    return-void
.end method

.method public ntSetUsePushNotification(Z)V
    .locals 1

    .line 980
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSetUsePushNotification(Z)V

    return-void
.end method

.method public ntSetUserIdentifier(Ljava/lang/String;)V
    .locals 1

    .line 1016
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSetUserIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public ntSetZone(Ljava/lang/String;)V
    .locals 1

    .line 1004
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSetZone(Ljava/lang/String;)V

    return-void
.end method

.method public ntShare(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 1

    .line 848
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShare(Lcom/netease/ntunisdk/base/ShareInfo;)V

    return-void
.end method

.method public ntShowBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 940
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ntShowCompactView(Z)V
    .locals 1

    .line 1092
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowCompactView(Z)V

    return-void
.end method

.method public ntShowConversation()V
    .locals 1

    .line 1008
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowConversation()V

    return-void
.end method

.method public ntShowFAQs()V
    .locals 1

    .line 1012
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowFAQs()V

    return-void
.end method

.method public ntShowRewardView([Ljava/lang/String;)V
    .locals 1

    .line 948
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowRewardView(Ljava/util/List;)V

    return-void
.end method

.method public ntShowWeb(Ljava/lang/String;)V
    .locals 1

    .line 932
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowWeb(Ljava/lang/String;)V

    return-void
.end method

.method public ntSwitchAccount()V
    .locals 1

    .line 732
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSwitchAccount()V

    return-void
.end method

.method public ntTrackCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1060
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntTrackCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ntUpLoadUserInfo()V
    .locals 1

    .line 804
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntUpLoadUserInfo()V

    return-void
.end method

.method public ntUpdateAchievement(Ljava/lang/String;I)V
    .locals 1

    .line 1028
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntUpdateAchievement(Ljava/lang/String;I)V

    return-void
.end method

.method public ntUpdateApi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1076
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntUpdateApi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ntUpdateEvent(Ljava/lang/String;I)V
    .locals 1

    .line 1032
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntUpdateEvent(Ljava/lang/String;I)V

    return-void
.end method

.method public ntUpdateRank(Ljava/lang/String;D)V
    .locals 1

    .line 844
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->ntUpdateRank(Ljava/lang/String;D)V

    return-void
.end method

.method public ntVerifyMobile(I)V
    .locals 1

    .line 1104
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntVerifyMobile(I)V

    return-void
.end method

.method public ntVerifyOrder()V
    .locals 1

    .line 720
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntVerifyOrder()V

    return-void
.end method

.method public ntvGenericFunctionCall(Ljava/lang/String;)V
    .locals 1

    .line 1040
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntvGenericFunctionCall(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 268
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onApplyFriendFinished(Z)V
    .locals 0

    .line 603
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryApplyFriendFinished(Z)V

    return-void
.end method

.method public onBackPressed(Landroid/app/Activity;)V
    .locals 0

    .line 293
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnBackPressed()V

    return-void
.end method

.method public onCancelLocalPushFinished(Z)V
    .locals 0

    .line 490
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnCancelLocalPushFinished(Z)V

    return-void
.end method

.method public onClickSplash()V
    .locals 0

    .line 560
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnStartupClickSplash()V

    return-void
.end method

.method public onClosed()V
    .locals 0

    .line 545
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnShowViewClosed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 0

    .line 278
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onConnectToChannelFinished(I)V
    .locals 0

    .line 320
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnConnectToChannelFinished(I)V

    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    .line 201
    invoke-static {p1}, Lcom/netease/ntunisdk/base/SdkMgr;->init(Landroid/content/Context;)V

    .line 202
    sget p2, Lcom/netease/neox/unisdk/R$string;->nxunisdk_engine:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "NeoX"

    .line 204
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Cocos"

    .line 206
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "Unity3D"

    .line 208
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "Unreal"

    .line 210
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p2, 0x3

    const/4 v2, 0x3

    goto :goto_0

    .line 214
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown engine "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    .line 217
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string v0, "GAME_ENGINE"

    invoke-interface {p2, v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 219
    sget p2, Lcom/netease/neox/unisdk/R$string;->nxunisdk_jf_gameid:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 221
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 222
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "JF_GAMEID"

    invoke-interface {v0, v2, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_4
    sget p2, Lcom/netease/neox/unisdk/R$string;->nxunisdk_jf_log_key:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 226
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 227
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "JF_LOG_KEY"

    invoke-interface {v0, v2, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_5
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string v0, "UNISDK_JF_GAS3"

    invoke-interface {p2, v0, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 232
    iput-object p1, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    .line 235
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string p2, "SPLASH_PNG_SCALE_TYPE"

    invoke-interface {p1, p2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 236
    iput-boolean v3, p0, Lcom/netease/neox/PluginUniSDK;->m_is_initing:Z

    .line 237
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntInit(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "huawei"

    .line 303
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->exit()V

    .line 306
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 307
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->destroyInst()V

    :cond_1
    return-void
.end method

.method public onDisConnectToChannelFinished(I)V
    .locals 0

    .line 325
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnDisConnectToChannelFinished(I)V

    return-void
.end method

.method public onEnterGame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 520
    invoke-static {p1, p2}, Lcom/netease/neox/PluginUniSDK;->NativeOnReceiveMsgEnterGame(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onExtendFuncCall(Ljava/lang/String;)V
    .locals 0

    .line 397
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnExtendFuncCall(Ljava/lang/String;)V

    return-void
.end method

.method public onFailed()V
    .locals 0

    .line 540
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnShowViewFailed()V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 0

    .line 570
    invoke-static {p1, p2}, Lcom/netease/neox/PluginUniSDK;->NativeOnVerifyFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onFinish(Lorg/json/JSONObject;)V
    .locals 0

    .line 444
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/neox/PluginUniSDK;->m_dl_progress:Ljava/lang/String;

    .line 445
    iget-object p1, p0, Lcom/netease/neox/PluginUniSDK;->m_dl_progress:Ljava/lang/String;

    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnDownloadFinish(Ljava/lang/String;)V

    return-void
.end method

.method public onGetUserPushFinished(Z)V
    .locals 0

    .line 480
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnGetUserPushFinished(Z)V

    return-void
.end method

.method public onInviteFriendListFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 623
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 626
    :goto_0
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryInviteFriendListFinished([Ljava/lang/String;)V

    return-void
.end method

.method public onInviterListFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 632
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/netease/ntunisdk/base/AccountInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 635
    :goto_0
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryInviterListFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V

    return-void
.end method

.method public onIsDarenUpdated(Z)V
    .locals 0

    .line 608
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryIsDarenUpdated(Z)V

    return-void
.end method

.method public onKeyDown(ILcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    .line 340
    invoke-static {p1, p2}, Lcom/netease/neox/PluginUniSDK;->NativeOnPadKeyDown(ILcom/netease/ntunisdk/base/PadEvent;)V

    return-void
.end method

.method public onKeyPressure(IFLcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    .line 350
    invoke-static {p1, p2, p3}, Lcom/netease/neox/PluginUniSDK;->NativeOnPadKeyPressure(IFLcom/netease/ntunisdk/base/PadEvent;)V

    return-void
.end method

.method public onKeyUp(ILcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    .line 345
    invoke-static {p1, p2}, Lcom/netease/neox/PluginUniSDK;->NativeOnPadKeyUp(ILcom/netease/ntunisdk/base/PadEvent;)V

    return-void
.end method

.method public onLeftStick(FFLcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    .line 355
    invoke-static {p1, p2, p3}, Lcom/netease/neox/PluginUniSDK;->NativeOnPadLeftStick(FFLcom/netease/ntunisdk/base/PadEvent;)V

    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .line 283
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOpenExitViewFailed()V
    .locals 3

    .line 378
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnOpenExitViewFailed()V

    .line 379
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/netease/neox/unisdk/R$string;->nxunisdk_title_exit_game:I

    .line 380
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/netease/neox/unisdk/R$string;->nxunisdk_message_exit_game:I

    .line 381
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/netease/neox/unisdk/R$drawable;->ic_launcher:I

    .line 382
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 383
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/netease/neox/unisdk/R$string;->confirm:I

    new-instance v2, Lcom/netease/neox/PluginUniSDK$1;

    invoke-direct {v2, p0}, Lcom/netease/neox/PluginUniSDK$1;-><init>(Lcom/netease/neox/PluginUniSDK;)V

    .line 384
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/netease/neox/unisdk/R$string;->cancel:I

    const/4 v2, 0x0

    .line 391
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onOpened()V
    .locals 0

    .line 535
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnShowViewOpened()V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    .line 242
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnPause()V

    .line 243
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenPauseView()V

    return-void
.end method

.method public onProgress(Lorg/json/JSONObject;)V
    .locals 0

    .line 438
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/neox/PluginUniSDK;->m_dl_progress:Ljava/lang/String;

    .line 439
    iget-object p1, p0, Lcom/netease/neox/PluginUniSDK;->m_dl_progress:Ljava/lang/String;

    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnDownloadProgress(Ljava/lang/String;)V

    return-void
.end method

.method public onProtocolFinish(I)V
    .locals 0

    .line 465
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnProtocolFinish(I)V

    return-void
.end method

.method public onQueryAvailablesInviteesFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 590
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/netease/ntunisdk/base/AccountInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 593
    :goto_0
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryAvailablesInviteesFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V

    return-void
.end method

.method public onQueryFriendListFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 581
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/netease/ntunisdk/base/AccountInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 584
    :goto_0
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryFriendListFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V

    return-void
.end method

.method public onQueryFriendListInGameFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 614
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/netease/ntunisdk/base/AccountInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 617
    :goto_0
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryFriendListInGameFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V

    return-void
.end method

.method public onQueryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V
    .locals 0

    .line 598
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V

    return-void
.end method

.method public onQueryRankFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 641
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/netease/ntunisdk/base/AccountInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 644
    :goto_0
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryRankFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V

    return-void
.end method

.method public onQuestCompleted(Ljava/lang/String;)V
    .locals 0

    .line 509
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQuestCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedNotification()V
    .locals 0

    .line 515
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnReceiveMsgNotification()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 298
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 0

    .line 263
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnRestart()V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    .line 253
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnResume()V

    return-void
.end method

.method public onRewarded()V
    .locals 0

    .line 530
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnShowViewRewarded()V

    return-void
.end method

.method public onRightStick(FFLcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    .line 360
    invoke-static {p1, p2, p3}, Lcom/netease/neox/PluginUniSDK;->NativeOnPadRightStick(FFLcom/netease/ntunisdk/base/PadEvent;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 288
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSelectChannelOptionFinished(Z)V
    .locals 0

    .line 330
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnSelectChannelOptionFinished(Z)V

    return-void
.end method

.method public onSendLocalNotificationFinished(I)V
    .locals 0

    .line 475
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnSendLocalNotificationFinished(I)V

    return-void
.end method

.method public onSendPushNotificationFinished(Z)V
    .locals 0

    .line 470
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnSendPushNotificationFinished(Z)V

    return-void
.end method

.method public onSetUserPushFinished(Z)V
    .locals 0

    .line 485
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnSetUserPushFinished(Z)V

    return-void
.end method

.method public onShareFinished(Z)V
    .locals 0

    .line 525
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnShareFinished(Z)V

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0

    .line 258
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnStart()V

    return-void
.end method

.method public onStateEvent(Lcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    .line 365
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnPadSateEvent(Lcom/netease/ntunisdk/base/PadEvent;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0

    .line 248
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnStop()V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 0

    .line 565
    invoke-static {p1, p2}, Lcom/netease/neox/PluginUniSDK;->NativeOnVerifySuccess(ILjava/lang/String;)V

    return-void
.end method

.method public onUpdateAchievement(Z)V
    .locals 0

    .line 654
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryUpdateAchievement(Z)V

    return-void
.end method

.method public onUpdateRankFinished(Z)V
    .locals 0

    .line 649
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryUpdateRankFinished(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 0

    .line 273
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnWindowFocusChanged(Z)V

    return-void
.end method

.method public orderCheckDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    .line 455
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnOrderCheckDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public orderConsumeDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    .line 460
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnOrderConsumeDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public queryDownload()Ljava/lang/String;
    .locals 1

    .line 673
    iget-boolean v0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_dl_init:Z

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_dl_progress:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public querySkuDetailsFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/SkuDetailsInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 501
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netease/ntunisdk/base/SkuDetailsInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/netease/ntunisdk/base/SkuDetailsInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 504
    :goto_0
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQuerySkuDetailsFinished([Lcom/netease/ntunisdk/base/SkuDetailsInfo;)V

    return-void
.end method

.method public regProduct(Ljava/lang/String;)V
    .locals 0

    .line 1205
    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;)V

    return-void
.end method

.method public regProduct(Ljava/lang/String;Ljava/lang/String;FI)V
    .locals 0

    .line 1201
    invoke-static {p1, p2, p3, p4}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;Ljava/lang/String;FI)V

    return-void
.end method

.method public regProduct(Ljava/lang/String;Ljava/lang/String;FI[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 1211
    array-length v0, p6

    if-lez v0, :cond_0

    array-length v0, p5

    array-length v1, p6

    if-ne v0, v1, :cond_0

    .line 1213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1214
    :goto_0
    array-length v2, p5

    if-ge v1, v2, :cond_1

    .line 1215
    aget-object v2, p5, v1

    aget-object v3, p6, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1218
    :cond_1
    invoke-static {p1, p2, p3, p4, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;Ljava/lang/String;FILjava/util/Map;)V

    return-void
.end method

.method public setALinkParams(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1305
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1307
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1308
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1309
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1311
    :cond_1
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setALinkParams(Ljava/util/Map;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setAltTextMsg(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1336
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1338
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1339
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1340
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1342
    :cond_1
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setAltTextMsg(Ljava/util/Map;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setArrPriceLocaleId(Lcom/netease/ntunisdk/base/OrderInfo;[Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_3

    .line 1252
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1256
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1257
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 1258
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v2, ";"

    .line 1260
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1262
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setArrPriceLocaleId(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string p2, ""

    .line 1253
    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setArrPriceLocaleId(Ljava/lang/String;)V

    return-void
.end method

.method public setILinkParams(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1367
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1369
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1370
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1371
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1373
    :cond_1
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setILinkParams(Ljava/util/Map;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setLinkParams(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1398
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1400
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1401
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1402
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1404
    :cond_1
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setLinkParams(Ljava/util/Map;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setLinkTextMsg(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1429
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1431
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1432
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1433
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1435
    :cond_1
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setLinkTextMsg(Ljava/util/Map;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setPropInt(Ljava/lang/String;I)V
    .locals 1

    .line 768
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 760
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSubTextMsg(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1491
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1493
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1494
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1495
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1497
    :cond_1
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setSubTextMsg(Ljava/util/Map;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setTextMsg(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1460
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1462
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1463
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1464
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1466
    :cond_1
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setTextMsg(Ljava/util/Map;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setToUserList(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1510
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1516
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1517
    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/ShareInfo;->setToUserList(Ljava/util/List;)V

    goto :goto_1

    .line 1511
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getToUserList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1513
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 796
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startupDone()V
    .locals 0

    .line 550
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnStartupDone()V

    return-void
.end method

.method public toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1775
    instance-of v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;

    if-eqz v0, :cond_0

    .line 1776
    check-cast p1, Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->obj2Json(Lcom/netease/ntunisdk/base/OrderInfo;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1777
    :cond_0
    instance-of v0, p1, Lcom/netease/ntunisdk/base/ShareInfo;

    if-eqz v0, :cond_1

    .line 1778
    check-cast p1, Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->obj2JsonStr(Lcom/netease/ntunisdk/base/ShareInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1779
    :cond_1
    instance-of v0, p1, Lcom/netease/ntunisdk/base/AccountInfo;

    if-eqz v0, :cond_2

    .line 1780
    check-cast p1, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/AccountInfo;->obj2Json(Lcom/netease/ntunisdk/base/AccountInfo;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1781
    :cond_2
    instance-of v0, p1, Lcom/netease/ntunisdk/base/SkuDetailsInfo;

    if-eqz v0, :cond_3

    .line 1782
    check-cast p1, Lcom/netease/ntunisdk/base/SkuDetailsInfo;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->obj2Json(Lcom/netease/ntunisdk/base/SkuDetailsInfo;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public updateShareInfoBitmap(Lcom/netease/ntunisdk/base/ShareInfo;Ljava/lang/String;)V
    .locals 0

    .line 1522
    invoke-static {p2}, Lcom/netease/neox/PluginUniSDK;->bitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public updateShareInfoThumb(Lcom/netease/ntunisdk/base/ShareInfo;Ljava/lang/String;)V
    .locals 0

    .line 1526
    invoke-static {p2}, Lcom/netease/neox/PluginUniSDK;->bitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareThumb(Landroid/graphics/Bitmap;)V

    return-void
.end method

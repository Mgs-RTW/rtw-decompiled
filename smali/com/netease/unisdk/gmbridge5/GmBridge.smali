.class public Lcom/netease/unisdk/gmbridge5/GmBridge;
.super Ljava/lang/Object;
.source "GmBridge.java"


# static fields
.field private static final OPEN_PAGE_AFTER_SETGENTOKENRESPONSE:I = 0x2

.field private static final SHOW_MENUS_AFTER_SETGENTOKENRESPONSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "gm_bridge"

.field public static sWebCloseListener:Lcom/netease/unisdk/gmbridge5/IWebCloseListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

.field private mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

.field private mIPCManager:Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

.field private mLoadingDialog:Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

.field private mRefer:Ljava/lang/String;

.field private mTodoAfterSetGenTokenResponse:I

.field private mTokenRequest:Lcom/netease/unisdk/gmbridge5/ITokenRequest;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mVisible:Z

    .line 54
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 55
    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->init(III)V

    .line 56
    new-instance v0, Lcom/netease/unisdk/gmbridge5/data/DataManager;

    invoke-direct {v0, p1}, Lcom/netease/unisdk/gmbridge5/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge5/GmBridge;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mRefer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/data/DataManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/unisdk/gmbridge5/GmBridge;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTodoAfterSetGenTokenResponse:I

    return p1
.end method

.method static synthetic access$300(Lcom/netease/unisdk/gmbridge5/GmBridge;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->showLoadingDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/ITokenRequest;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTokenRequest:Lcom/netease/unisdk/gmbridge5/ITokenRequest;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;ZII)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/unisdk/gmbridge5/GmBridge;->gotoGMWebviewActivity(Ljava/lang/String;ZII)V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/view/FloatWindow;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    return-object p0
.end method

.method static synthetic access$602(Lcom/netease/unisdk/gmbridge5/GmBridge;Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Lcom/netease/unisdk/gmbridge5/view/FloatWindow;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    return-object p1
.end method

.method static synthetic access$700(Lcom/netease/unisdk/gmbridge5/GmBridge;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mLoadingDialog:Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$802(Lcom/netease/unisdk/gmbridge5/GmBridge;Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;)Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mLoadingDialog:Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    return-object p1
.end method

.method private gotoGMWebviewActivity(Ljava/lang/String;ZII)V
    .locals 3

    .line 154
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_WEBVIEW_SINGLE_PROCESS:I

    if-eqz v0, :cond_2

    .line 156
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    const-class v2, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivityEx3;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const-string v2, "ORIENTATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->THEME_TRANSLUCENT:I

    const-string v2, "THEME_TRANSLUCENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_MODE_SHORT_EDGES:I

    const-string v2, "CUTOUT_MODE_SHORT_EDGES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_MARGIN:I

    const-string v2, "CUTOUT_MARGIN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER_COLOR:Ljava/lang/String;

    const-string v2, "BLACK_BORDER_COLOR"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER:I

    const-string v2, "BLACK_BORDER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ENABLE_UNISDK_PERMISSION_TIPS:I

    const-string v2, "ENABLE_UNISDK_PERMISSION_TIPS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_PERMISSION_TIPS:Ljava/lang/String;

    const-string v2, "UNISDK_PERMISSION_TIPS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_GM_PERMISSION_RECORD_TIPS:Ljava/lang/String;

    const-string v2, "UNISDK_GM_PERMISSION_RECORD_TIPS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->MODIFY_USERAGENT:I

    const-string v2, "MODIFY_USERAGENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->USERAGENT_CHANNEL:Ljava/lang/String;

    const-string v2, "USERAGENT_CHANNEL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_PERMISSION_TIPS2:Ljava/lang/String;

    const-string v2, "UNISDK_PERMISSION_TIPS2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->DONT_SHOW_LOADING_DIALOG_WHEN_WAIT_TOKEN:I

    const-string v2, "DONT_SHOW_LOADING_DIALOG_WHEN_WAIT_TOKEN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->DONT_SET_SCREEN_ORIENTATION_SENSOR_WHEN_PLAY_VIDEO:I

    const-string v2, "DONT_SET_SCREEN_ORIENTATION_SENSOR_WHEN_PLAY_VIDEO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_WEBVIEW_SINGLE_PROCESS:I

    const-string v2, "GM_WEBVIEW_SINGLE_PROCESS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    sget-boolean v1, Lcom/netease/unisdk/gmbridge5/log/NgLog;->isDebug:Z

    const-string v2, "NGLOG_ISDEBUG"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_SHOW_LOADING:I

    const-string v2, "GM_SHOW_LOADING"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_USE_FONTS:I

    const-string v2, "GM_USE_FONTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/data/I18nManager;->getI18nInfo()Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "GM_I18N_INFO"

    .line 178
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mIPCManager:Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

    if-eqz v1, :cond_1

    .line 182
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->unbindService(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mIPCManager:Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

    .line 185
    :cond_1
    new-instance v1, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

    invoke-direct {v1}, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;-><init>()V

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mIPCManager:Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

    .line 186
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mIPCManager:Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->bindService(Landroid/content/Context;)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 189
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_3

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_3

    .line 191
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    const-class v2, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivityEx;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 193
    :cond_3
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->THEME_TRANSLUCENT:I

    if-eqz v0, :cond_4

    .line 194
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    const-class v2, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivityEx2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 196
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    const-class v2, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const-string v1, "GM_WEBVIEW_URL"

    .line 200
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "GM_HASCUTOUT"

    .line 201
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "CUTOUT_WIDTH"

    .line 202
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "CUTOUT_HEIGHT"

    .line 203
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 205
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->hideLoadingDialog()V

    const/4 p1, 0x0

    .line 206
    iput p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTodoAfterSetGenTokenResponse:I

    return-void
.end method

.method private hideLoadingDialog()V
    .locals 2

    const-string v0, "gm_bridge"

    const-string v1, "hideLoadingDialog..."

    .line 310
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->DONT_SHOW_LOADING_DIALOG_WHEN_WAIT_TOKEN:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mLoadingDialog:Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    if-eqz v0, :cond_1

    .line 315
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$6;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/GmBridge$6;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private showLoadingDialog()V
    .locals 2

    .line 295
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->DONT_SHOW_LOADING_DIALOG_WHEN_WAIT_TOKEN:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 298
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$5;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/GmBridge$5;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string v0, "gm_bridge"

    const-string v1, "destroy ##"

    .line 267
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->hideLoadingDialog()V

    .line 269
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getInstance()Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mIPCManager:Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

    if-eqz v0, :cond_1

    const-string v1, "destroy"

    .line 274
    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->send(Ljava/lang/String;)V

    .line 277
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->shutdown()V

    return-void
.end method

.method public getDataManager()Lcom/netease/unisdk/gmbridge5/data/DataManager;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    return-object v0
.end method

.method public getFloatWindow()Lcom/netease/unisdk/gmbridge5/view/FloatWindow;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    return-object v0
.end method

.method public getIPCManager()Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mIPCManager:Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

    return-object v0
.end method

.method public openGMPage(Ljava/lang/String;)V
    .locals 8

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ntOpenGMPage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/cutout/CutoutUtil;->hasCutout(Landroid/app/Activity;)Z

    move-result v5

    .line 123
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/cutout/CutoutUtil;->getCutoutWidthHeight(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v2, 0x0

    aget v6, v0, v2

    .line 124
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/cutout/CutoutUtil;->getCutoutWidthHeight(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v2, 0x1

    aget v7, v0, v2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasCutout : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mRefer:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0, p1, v5, v6, v7}, Lcom/netease/unisdk/gmbridge5/GmBridge;->gotoGMWebviewActivity(Ljava/lang/String;ZII)V

    goto :goto_0

    .line 131
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/netease/unisdk/gmbridge5/GmBridge$2;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;ZII)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public receiveMessage(Ljava/lang/String;)V
    .locals 5

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 240
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setFloatBtnVisible(Z)V

    .line 242
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "msgs"

    .line 243
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "menu_id"

    if-eqz p1, :cond_2

    .line 245
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 247
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 249
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->addRedIds(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_2
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->addRedIds(Ljava/lang/String;)V

    .line 255
    :cond_3
    new-instance p1, Lcom/netease/unisdk/gmbridge5/GmBridge$4;

    invoke-direct {p1, p0}, Lcom/netease/unisdk/gmbridge5/GmBridge$4;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;)V

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ntReceiveMessage error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gm_bridge"

    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public requestMenus()V
    .locals 1

    const/4 v0, 0x1

    .line 289
    iput v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTodoAfterSetGenTokenResponse:I

    .line 290
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->showLoadingDialog()V

    .line 291
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTokenRequest:Lcom/netease/unisdk/gmbridge5/ITokenRequest;

    invoke-interface {v0}, Lcom/netease/unisdk/gmbridge5/ITokenRequest;->doRequest()V

    return-void
.end method

.method public sdkOnPause()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->hide()V

    :cond_0
    return-void
.end method

.method public sdkOnResume()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mVisible:Z

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->show()V

    :cond_0
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 72
    sput-boolean p1, Lcom/netease/unisdk/gmbridge5/log/NgLog;->isDebug:Z

    return-void
.end method

.method public setFloatBtnVisible(Z)V
    .locals 1

    .line 215
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mVisible:Z

    .line 216
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$3;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge5/GmBridge$3;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;Z)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setGenTokenResponse(Ljava/lang/String;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->hideLoadingDialog()V

    .line 99
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->setGenTokenResponse(Ljava/lang/String;)V

    .line 100
    iget p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTodoAfterSetGenTokenResponse:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 101
    new-instance p1, Lcom/netease/unisdk/gmbridge5/GmBridge$1;

    invoke-direct {p1, p0}, Lcom/netease/unisdk/gmbridge5/GmBridge$1;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;)V

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 108
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->showExpandLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    .line 328
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$7;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge5/GmBridge$7;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->setRoleId(Ljava/lang/String;)V

    return-void
.end method

.method public setTokenRequest(Lcom/netease/unisdk/gmbridge5/ITokenRequest;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTokenRequest:Lcom/netease/unisdk/gmbridge5/ITokenRequest;

    return-void
.end method

.method public setWebCloseListener(Lcom/netease/unisdk/gmbridge5/IWebCloseListener;)V
    .locals 0

    .line 80
    sput-object p1, Lcom/netease/unisdk/gmbridge5/GmBridge;->sWebCloseListener:Lcom/netease/unisdk/gmbridge5/IWebCloseListener;

    return-void
.end method

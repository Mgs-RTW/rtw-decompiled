.class public Lcom/netease/ntunisdk/Sdkgmbridge;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "Sdkgmbridge.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "gmbridge"

.field private static final SDK_VERSION:Ljava/lang/String; = "5.1.2"

.field private static final TAG:Ljava/lang/String; = "UniSDK gm_bridge"


# instance fields
.field private mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    const-string v0, "INNER_MODE_SECOND_CHANNEL"

    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/Sdkgmbridge;->setPropInt(Ljava/lang/String;I)V

    const-string v0, "INNER_MODE_NO_PAY"

    .line 37
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/Sdkgmbridge;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method private initGmBridgeProp(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "orientation"

    .line 265
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 266
    sput v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const-string v0, "theme_translucent"

    .line 268
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->THEME_TRANSLUCENT:I

    const-string v0, "cutout_mode_short_edges"

    .line 269
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_MODE_SHORT_EDGES:I

    const-string v0, "cutout_margin"

    .line 270
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_MARGIN:I

    const-string v0, "cutout_black_border"

    const/4 v1, 0x1

    .line 271
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER:I

    const-string v0, "cutout_black_border_color"

    .line 272
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER_COLOR:Ljava/lang/String;

    const-string v0, "modify_useragent"

    .line 273
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->MODIFY_USERAGENT:I

    const-string v0, "dont_show_loading_dialog_when_wait_token"

    .line 274
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->DONT_SHOW_LOADING_DIALOG_WHEN_WAIT_TOKEN:I

    const-string v0, "dont_set_screen_orientation_sensor_when_play_video"

    .line 275
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->DONT_SET_SCREEN_ORIENTATION_SENSOR_WHEN_PLAY_VIDEO:I

    const-string v0, "gm_webview_single_process"

    .line 276
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_WEBVIEW_SINGLE_PROCESS:I

    const-string v0, "gmShowLoading"

    .line 277
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_SHOW_LOADING:I

    const-string v0, "gmUseFonts"

    .line 278
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_USE_FONTS:I

    const-string v0, "language"

    .line 281
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setLanguage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method protected doSepcialConfigVal(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "GM_SCHEME_PFEFIX"

    .line 155
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/Sdkgmbridge;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 2

    const-string v0, "UniSDK gm_bridge"

    const-string v1, "exit"

    .line 130
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->destroy()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    :cond_0
    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 6

    const-string v0, "0"

    const-string v1, "SCR_ORIENTATION"

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extendFunc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UniSDK gm_bridge"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 163
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "ntSetGMProp"

    .line 164
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/Sdkgmbridge;->initGmBridgeProp(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_0
    const-string v4, "ntSetRoleId"

    .line 166
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p1, "roleId"

    .line 167
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setRoleId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v4, "ntOpenGMPage"

    .line 169
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string p1, "1"

    .line 171
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v4

    const-string v5, "ENABLE_UNISDK_PERMISSION_TIPS"

    invoke-interface {v4, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 172
    sput p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ENABLE_UNISDK_PERMISSION_TIPS:I

    .line 175
    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v4, "UNISDK_GM_PERMISSION_TIPS"

    invoke-interface {p1, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_PERMISSION_TIPS:Ljava/lang/String;

    .line 176
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v4, "UNISDK_GM_PERMISSION_TIPS2"

    invoke-interface {p1, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_PERMISSION_TIPS2:Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v4, "UNISDK_GM_PERMISSION_RECORD_TIPS"

    invoke-interface {p1, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_GM_PERMISSION_RECORD_TIPS:Ljava/lang/String;

    .line 179
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->USERAGENT_CHANNEL:Ljava/lang/String;

    const-string p1, "GM_SCHEME_PFEFIX"

    .line 180
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/Sdkgmbridge;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_SCHEME_PFEFIX:Ljava/lang/String;

    .line 182
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v4, "DONT_SHOW_LOADING_DIALOG_WHEN_WAIT_TOKEN"

    const/4 v5, -0x1

    invoke-interface {p1, v4, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v5, :cond_3

    .line 184
    sput p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->DONT_SHOW_LOADING_DIALOG_WHEN_WAIT_TOKEN:I

    .line 186
    :cond_3
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v4, "DONT_SET_SCREEN_ORIENTATION_SENSOR_WHEN_PLAY_VIDEO"

    invoke-interface {p1, v4, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v5, :cond_4

    .line 188
    sput p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->DONT_SET_SCREEN_ORIENTATION_SENSOR_WHEN_PLAY_VIDEO:I

    .line 191
    :cond_4
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v4, "GM_WEBVIEW_SINGLE_PROCESS"

    invoke-interface {p1, v4, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v5, :cond_5

    .line 193
    sput p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_WEBVIEW_SINGLE_PROCESS:I

    .line 196
    :cond_5
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/Sdkgmbridge;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6

    .line 197
    sget p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    if-nez p1, :cond_6

    .line 198
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/Sdkgmbridge;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    .line 201
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConstProp.SCR_ORIENTATION : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/Sdkgmbridge;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "refer"

    .line 203
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 204
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->openGMPage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "ntSetGenTokenResponse"

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "response"

    .line 206
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setGenTokenResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "ntSetFloatBtnVisible"

    .line 208
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "visible"

    .line 209
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 210
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setFloatBtnVisible(Z)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "ntReceiveMessage"

    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "message"

    .line 212
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->receiveMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "ntDestroy"

    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 215
    iget-object p1, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->destroy()V

    goto/16 :goto_0

    :cond_b
    const-string v0, "gmbridge_call_js"

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "params"

    .line 217
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getInstance()Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v1, "gmsdk.gmbridge_call_js"

    .line 220
    invoke-virtual {v0, p1, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :cond_c
    iget-object p1, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->getIPCManager()Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 224
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->send(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "getUserTicketRes4gm"

    .line 227
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "result"

    if-eqz v0, :cond_f

    .line 228
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getInstance()Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 231
    sget-object v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getUserTicketCallbackFunc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 232
    sget-object v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getUserTicketCallbackFunc:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_e
    iget-object p1, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->getIPCManager()Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 237
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->send(Ljava/lang/String;)V

    goto :goto_0

    :cond_f
    const-string v0, "gmbridgeRes"

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 241
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "method"

    .line 242
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getInstance()Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 245
    invoke-virtual {v1, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getJScallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 247
    invoke-virtual {v1, p1, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_10
    iget-object p1, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->getIPCManager()Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 252
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->send(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFunc Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_0
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "gmbridge"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "5.1.2"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "5.1.2(1)"

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge;

    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->myCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 44
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    sget-boolean v1, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDebug:Z

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setDebug(Z)V

    .line 45
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    new-instance v1, Lcom/netease/ntunisdk/Sdkgmbridge$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/Sdkgmbridge$1;-><init>(Lcom/netease/ntunisdk/Sdkgmbridge;)V

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setTokenRequest(Lcom/netease/unisdk/gmbridge5/ITokenRequest;)V

    .line 57
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    new-instance v1, Lcom/netease/ntunisdk/Sdkgmbridge$2;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/Sdkgmbridge$2;-><init>(Lcom/netease/ntunisdk/Sdkgmbridge;)V

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setWebCloseListener(Lcom/netease/unisdk/gmbridge5/IWebCloseListener;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/data/I18nManager;->preGMStrings(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 70
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    return-void
.end method

.method public login()V
    .locals 0

    return-void
.end method

.method public logout()V
    .locals 0

    return-void
.end method

.method public ntSetFloatBtnVisible(Z)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->ntSetFloatBtnVisible(Z)V

    return-void
.end method

.method public openManager()V
    .locals 0

    return-void
.end method

.method public sdkOnPause()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->sdkOnPause()V

    :cond_0
    return-void
.end method

.method public sdkOnResume()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkgmbridge;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->sdkOnResume()V

    :cond_0
    return-void
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method

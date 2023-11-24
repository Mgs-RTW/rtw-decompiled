.class public Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;
.super Ljava/lang/Object;
.source "UnisdkNtGmBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;,
        Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;,
        Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;,
        Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;,
        Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_PICK_FROM_ALBUM:I = 0x143

.field public static final REQUEST_CODE_PICK_FROM_CAMERA:I = 0x144

.field private static final TAG:Ljava/lang/String; = "gm_bridge"

.field private static final VERSION:Ljava/lang/String; = "4.6.0"

.field public static final WINDOW_GRAVITY_LB:I = 0x53

.field public static final WINDOW_GRAVITY_LT:I = 0x33

.field public static final WINDOW_GRAVITY_RB:I = 0x55

.field public static final WINDOW_GRAVITY_RT:I = 0x35

.field public static sActivity:Landroid/app/Activity;

.field public static sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

.field public static sPageCloseListener:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;

.field public static sRefer:Ljava/lang/String;

.field public static sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.6.0"

    return-object v0
.end method

.method public static ntDestroy()V
    .locals 2

    const-string v0, "gm_bridge"

    const-string v1, "ntDestroy"

    .line 290
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    new-instance v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$6;

    invoke-direct {v1}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 308
    sput-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public static ntInit(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;)V
    .locals 3

    .line 100
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/log/NgLog;->checkIsDebug(Landroid/content/Context;)V

    const-string v0, "gm_bridge"

    const-string v1, "ntInit"

    .line 101
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 102
    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->init(III)V

    .line 103
    sput-object p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    .line 104
    new-instance v0, Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    .line 105
    sget-object p1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-virtual {p1, p3}, Lcom/netease/unisdk/gmbridge/data/DataManager;->setAsynTokenRequest(Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;)V

    .line 106
    new-instance p1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$2;

    invoke-direct {p1, p0, p2}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$2;-><init>(Landroid/app/Activity;I)V

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ntInit(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;)V
    .locals 3

    .line 77
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/log/NgLog;->checkIsDebug(Landroid/content/Context;)V

    const-string v0, "gm_bridge"

    const-string v1, "ntInit"

    .line 78
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 79
    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->init(III)V

    .line 80
    sput-object p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    .line 81
    new-instance v0, Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    .line 82
    sget-object p1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-virtual {p1, p3}, Lcom/netease/unisdk/gmbridge/data/DataManager;->setTokenRequest(Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;)V

    .line 83
    new-instance p1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$1;

    invoke-direct {p1, p0, p2}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$1;-><init>(Landroid/app/Activity;I)V

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ntInit(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;)V
    .locals 1

    const/16 v0, 0x53

    .line 133
    invoke-static {p0, p1, v0, p2}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntInit(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;)V

    return-void
.end method

.method public static ntInit(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;)V
    .locals 1

    const/16 v0, 0x53

    .line 122
    invoke-static {p0, p1, v0, p2}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntInit(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;)V

    return-void
.end method

.method public static ntOnActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const-string v0, "gm_bridge"

    const-string v1, "ntOnActivityResult requestCode = %d,resultCode = %d"

    const/4 v2, 0x2

    .line 313
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    sget-object p1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x143

    if-ne p1, p0, :cond_2

    if-nez p2, :cond_1

    .line 319
    sget-object p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->onPickResult(Landroid/net/Uri;)V

    goto :goto_0

    .line 321
    :cond_1
    sget-object p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->onPickResult(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x144

    if-ne p1, p0, :cond_3

    .line 324
    sget-object p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->onCaptureResult()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static ntOnPause()V
    .locals 3

    .line 278
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "gm_bridge"

    const-string v1, "ntOnPause"

    .line 281
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    if-eqz v0, :cond_1

    .line 283
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->stopPlayback()V

    .line 284
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    const-string v1, ""

    const-string v2, "cancel_record"

    invoke-virtual {v0, v1, v2}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_1
    invoke-static {}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->onPause()V

    return-void
.end method

.method public static ntOnResume()V
    .locals 3

    .line 260
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "gm_bridge"

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ntOnResume :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    if-nez v0, :cond_1

    .line 266
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntOpenGMPage(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_1
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->show()V

    goto :goto_0

    .line 273
    :cond_2
    invoke-static {}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->onResume()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static ntOpenGMPage()V
    .locals 1

    .line 149
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$3;

    invoke-direct {v0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$3;-><init>()V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ntOpenGMPage(Ljava/lang/String;)V
    .locals 1

    .line 178
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$4;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ntReceiveMessage(Ljava/lang/String;)V
    .locals 5

    .line 201
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_2

    .line 204
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 208
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "msgs"

    .line 209
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 211
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 213
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 215
    sget-object v3, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    const-string v4, "menu_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/netease/unisdk/gmbridge/data/DataManager;->addRedIds(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_3
    sget-object p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    const-string v1, "menu_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->addRedIds(Ljava/lang/String;)V

    .line 221
    :cond_4
    new-instance p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$5;

    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$5;-><init>()V

    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "gm_bridge"

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ntReceiveMessage error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public static ntSetFloatBtnVisible(Z)V
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->setFloatBtnVisible(Z)V

    return-void
.end method

.method public static ntSetGMPageBackground(I)V
    .locals 0

    .line 246
    sput p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->bgColor:I

    return-void
.end method

.method public static ntSetGMPageBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 238
    sput-object p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->bgDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static ntSetGMPageSize(FF)V
    .locals 0

    .line 255
    sput p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->widthPercent:F

    .line 256
    sput p1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->heightPercent:F

    return-void
.end method

.method public static ntSetRoleId(Ljava/lang/String;)V
    .locals 1

    .line 63
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-virtual {v0, p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->setRoleId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static ntsetPageCloseListener(Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;)V
    .locals 0

    .line 142
    sput-object p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sPageCloseListener:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;

    return-void
.end method

.method public static setShowFloatWindowWhenInit(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntSetFloatBtnVisible(Z)V

    return-void
.end method

.class public Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivityEx3;
.super Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;
.source "GMWebviewActivityEx3.java"


# static fields
.field public static final GM_I18N_INFO:Ljava/lang/String; = "GM_I18N_INFO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 22
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivityEx3;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "ORIENTATION"

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const-string v2, "THEME_TRANSLUCENT"

    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->THEME_TRANSLUCENT:I

    const-string v2, "CUTOUT_MODE_SHORT_EDGES"

    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_MODE_SHORT_EDGES:I

    const-string v2, "CUTOUT_MARGIN"

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_MARGIN:I

    const-string v2, "BLACK_BORDER"

    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER:I

    const-string v2, "BLACK_BORDER_COLOR"

    .line 29
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER_COLOR:Ljava/lang/String;

    const-string v2, "ENABLE_UNISDK_PERMISSION_TIPS"

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->ENABLE_UNISDK_PERMISSION_TIPS:I

    const-string v2, "UNISDK_PERMISSION_TIPS"

    .line 31
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_PERMISSION_TIPS:Ljava/lang/String;

    const-string v2, "UNISDK_GM_PERMISSION_RECORD_TIPS"

    .line 32
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_GM_PERMISSION_RECORD_TIPS:Ljava/lang/String;

    const-string v2, "MODIFY_USERAGENT"

    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->MODIFY_USERAGENT:I

    const-string v2, "USERAGENT_CHANNEL"

    .line 34
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->USERAGENT_CHANNEL:Ljava/lang/String;

    const-string v2, "UNISDK_PERMISSION_TIPS2"

    .line 35
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_PERMISSION_TIPS2:Ljava/lang/String;

    const-string v2, "DONT_SHOW_LOADING_DIALOG_WHEN_WAIT_TOKEN"

    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->DONT_SHOW_LOADING_DIALOG_WHEN_WAIT_TOKEN:I

    const-string v2, "DONT_SET_SCREEN_ORIENTATION_SENSOR_WHEN_PLAY_VIDEO"

    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->DONT_SET_SCREEN_ORIENTATION_SENSOR_WHEN_PLAY_VIDEO:I

    const-string v2, "GM_WEBVIEW_SINGLE_PROCESS"

    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_WEBVIEW_SINGLE_PROCESS:I

    const-string v2, "NGLOG_ISDEBUG"

    .line 40
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/netease/unisdk/gmbridge5/log/NgLog;->isDebug:Z

    const-string v1, "GM_I18N_INFO"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    if-eqz v0, :cond_0

    .line 44
    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/data/I18nManager;->setI18nInfo(Lcom/netease/unisdk/gmbridge5/data/I18nInfo;)V

    .line 47
    :cond_0
    invoke-super {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/data/I18nManager;->setI18nInfo(Lcom/netease/unisdk/gmbridge5/data/I18nInfo;)V

    .line 54
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

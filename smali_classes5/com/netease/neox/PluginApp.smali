.class public Lcom/netease/neox/PluginApp;
.super Lcom/netease/neox/PluginBase;
.source "PluginApp.java"


# static fields
.field public static final FULL_SENSOR:I = 0x2

.field public static final LANDSCAPE:I = 0x0

.field public static final PORTRAIT:I = 0x1

.field public static final REVERSE_MASK:I = 0x80

.field public static final SENSOR:I = 0x3


# instance fields
.field private m_context:Landroid/app/Activity;

.field private m_current_orient:I

.field private m_current_rotation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/netease/neox/PluginBase;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/netease/neox/PluginApp;->m_context:Landroid/app/Activity;

    const/4 v0, 0x2

    .line 25
    iput v0, p0, Lcom/netease/neox/PluginApp;->m_current_orient:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/netease/neox/PluginApp;->m_current_rotation:I

    return-void
.end method

.method public static native NativeOnOrientationChanged(I)V
.end method

.method static synthetic access$000(Lcom/netease/neox/PluginApp;)Landroid/app/Activity;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/netease/neox/PluginApp;->m_context:Landroid/app/Activity;

    return-object p0
.end method

.method private getOrientationByOrient(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x6

    return p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/16 p1, 0xa

    return p1

    :cond_2
    const/4 p1, 0x4

    return p1
.end method


# virtual methods
.method public getCurrentOrientation()I
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/netease/neox/PluginApp;->m_context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 100
    iget-object v1, p0, Lcom/netease/neox/PluginApp;->m_context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x80

    :goto_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    or-int/lit8 v0, v1, 0x1

    return v0

    :cond_2
    or-int/lit8 v0, v1, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "app"

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackPressed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 3

    .line 67
    iget-object p1, p0, Lcom/netease/neox/PluginApp;->m_context:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 68
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/netease/neox/PluginApp;->m_current_orient:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/netease/neox/PluginApp;->m_current_rotation:I

    if-eq p1, v0, :cond_4

    .line 69
    :cond_0
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_2
    const/16 v1, 0x80

    :cond_3
    or-int v0, v2, v1

    .line 71
    invoke-static {v0}, Lcom/netease/neox/PluginApp;->NativeOnOrientationChanged(I)V

    .line 73
    :cond_4
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/netease/neox/PluginApp;->m_current_orient:I

    .line 74
    iput p1, p0, Lcom/netease/neox/PluginApp;->m_current_rotation:I

    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/netease/neox/PluginApp;->m_context:Landroid/app/Activity;

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/netease/neox/PluginApp;->m_current_orient:I

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/netease/neox/PluginApp;->m_current_rotation:I

    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 0

    return-void
.end method

.method public requestOrientation(II)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 128
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/neox/PluginApp;->getOrientationByOrient(I)I

    move-result p1

    if-nez p2, :cond_1

    .line 129
    iget-object p2, p0, Lcom/netease/neox/PluginApp;->m_context:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p2

    if-ne p2, p1, :cond_1

    return v0

    .line 133
    :cond_1
    iget-object p2, p0, Lcom/netease/neox/PluginApp;->m_context:Landroid/app/Activity;

    new-instance v1, Lcom/netease/neox/PluginApp$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/neox/PluginApp$1;-><init>(Lcom/netease/neox/PluginApp;I)V

    invoke-virtual {p2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v0
.end method

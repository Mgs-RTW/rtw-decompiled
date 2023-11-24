.class public Lcom/netease/mpay/oversea/MpayActivity;
.super Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;
.source "MpayActivity.java"

# interfaces
.implements Lcom/netease/mcount/listener/ITrackerHelper;


# static fields
.field public static final CHANNEL_LOGIN_TYPE:Ljava/lang/String; = "login_type"


# instance fields
.field protected a:Lcom/netease/mpay/oversea/ui/a;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->b:Z

    .line 10
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->c:Z

    .line 11
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->d:Z

    .line 14
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->g:Z

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/d;->a(Landroid/os/Bundle;)V

    const-string v0, "consts0"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/MpayActivity;->b:Z

    return-void
.end method

.method private a(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "data"

    .line 3
    :try_start_0
    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__loading_layout:I

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v1, "launch_type"

    const/4 v2, -0x1

    .line 6
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    .line 8
    iget-object p2, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-nez p2, :cond_0

    new-instance p2, Lcom/netease/mpay/oversea/ui/o;

    invoke-direct {p2, p0}, Lcom/netease/mpay/oversea/ui/o;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/ui/a;->a(Landroid/os/Bundle;)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 14
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;

    if-eqz p2, :cond_3

    .line 15
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->r()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    new-instance v0, Lcom/netease/mpay/oversea/l/d;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/l/d;-><init>()V

    new-instance v2, Lcom/netease/mpay/oversea/MpayActivity$b;

    invoke-direct {v2, p0, p2}, Lcom/netease/mpay/oversea/MpayActivity$b;-><init>(Lcom/netease/mpay/oversea/MpayActivity;Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V

    new-instance v3, Lcom/netease/mpay/oversea/MpayActivity$c;

    invoke-direct {v3, p0, v1, p2, p1}, Lcom/netease/mpay/oversea/MpayActivity$c;-><init>(Lcom/netease/mpay/oversea/MpayActivity;ILcom/netease/mpay/oversea/ui/TransmissionData$BaseData;Landroid/os/Bundle;)V

    invoke-virtual {v0, p0, v2, v3}, Lcom/netease/mpay/oversea/l/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/r/d$a;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 20
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/MpayActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 60
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    .line 61
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/MpayActivity;->finish()V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/MpayActivity;Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/MpayActivity;->a(Landroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/MpayActivity;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/netease/mpay/oversea/MpayActivity;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/MpayActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/mpay/oversea/MpayActivity;->d:Z

    return p0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/MpayActivity;->finish()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/a;->a(Landroid/view/KeyEvent;)V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/a;->a(Landroid/view/MotionEvent;)V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->finish()V

    .line 2
    invoke-static {p0}, Lcom/netease/mpay/oversea/k/e;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/trackers/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Lcom/netease/mpay/oversea/ui/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    return-object v0
.end method

.method public getLibTag()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/trackers/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginHandler()Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/f;->e()Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    move-result-object v0

    return-object v0
.end method

.method public getTrackName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method public getTrackProperties(Landroid/content/Context;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayActivity;->f:Ljava/util/Map;

    return-object p1
.end method

.method public isDynamicTextEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isIgnored()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->g:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    invoke-static {p0}, Lcom/netease/mpay/oversea/h/m/c;->a(Landroid/app/Activity;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/a;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onAttachedToWindow()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->c(Landroid/view/Window;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onBackPressed()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-super {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-static {p0}, Lcom/netease/mpay/oversea/h/m/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/e;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/e;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 7
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onCreate(Landroid/os/Bundle;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Lcom/netease/mpay/oversea/k/e;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/k/e;

    .line 10
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x400

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 14
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x20008

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 16
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->c(Landroid/view/Window;)V

    .line 17
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->d(Landroid/view/Window;)V

    const v1, 0x3dcccccd    # 0.1f

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 20
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/MpayActivity;->a(Landroid/os/Bundle;)V

    .line 21
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->b:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->s()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 27
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/MpayActivity;->finish()V

    return-void

    .line 30
    :cond_3
    invoke-static {p0}, Lcom/netease/mpay/oversea/h/m/c;->a(Landroid/app/Activity;)V

    .line 31
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->getOriginResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/r/e;->e:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/netease/mpay/oversea/f;->f()Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;

    move-result-object v3

    new-instance v4, Lcom/netease/mpay/oversea/MpayActivity$a;

    invoke-direct {v4, p0, p1, v0}, Lcom/netease/mpay/oversea/MpayActivity$a;-><init>(Lcom/netease/mpay/oversea/MpayActivity;Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 33
    invoke-static {p0, v1, v2, v3, v4}, Lcom/netease/mpay/oversea/f;->a(Landroid/app/Activity;Landroid/content/res/Resources;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V

    return-void

    .line 34
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/MpayActivity;->finish()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/a;->e()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :catchall_0
    invoke-static {p0}, Lcom/netease/mpay/oversea/h/m/c;->b(Landroid/app/Activity;)V

    .line 11
    invoke-static {p0}, Lcom/netease/mpay/oversea/k/e;->b(Landroid/app/Activity;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->setIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/netease/mpay/oversea/MpayActivity;->a(Landroid/os/Bundle;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/a;->f()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/a;->a(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onRestart()V

    .line 2
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->c(Landroid/view/Window;)V

    .line 3
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_0

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/h/m/c;->a()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/h/m/c;->a()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 9
    :goto_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/MpayActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/a;->g()V

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "onRestoreInstanceState"

    .line 4
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/MpayActivity;->a(Landroid/os/Bundle;)V

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/a;->b(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    const-string p2, "onRestoreInstanceState"

    .line 2
    invoke-static {p2}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/MpayActivity;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected declared-synchronized onResume()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->c(Landroid/view/Window;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/a;->h()V

    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/d;->b(Landroid/os/Bundle;)V

    const-string v0, "consts0"

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/a;->c(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/a;->i()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/a;->j()V

    :cond_0
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->c(Landroid/view/Window;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    .line 9
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/a;->a(Z)V

    .line 12
    :cond_1
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/MpayActivity;->d:Z

    return-void
.end method

.method public setIgnored(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/MpayActivity;->g:Z

    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public setPageProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayActivity;->f:Ljava/util/Map;

    return-void
.end method

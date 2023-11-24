.class public Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private volatile a:Z

.field private b:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->a:Z

    if-eqz p1, :cond_0

    const-string v0, "com.netease.ntunisdk.ngplugin.PluginManager"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->a:Z

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->b:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getApplySkin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->b:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getApplySkin()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->b:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->b:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getId(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->b:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->b:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->b:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public init(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->b:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->init(Landroid/content/Context;Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method

.method public isInit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->a:Z

    return v0
.end method

.method public setApplySkin(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->b:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->setApplySkin(Z)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setForceShutdownSkin(ZLandroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->b:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->setForceShutdownSkin(ZLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setForceShutdownSkin, Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public updateResourcesConfig(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->b:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->updateResourcesConfig(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

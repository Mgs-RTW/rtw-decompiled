.class public Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile a:Z

.field private final b:Ljava/lang/String;

.field private final c:Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/res/Resources;

.field private f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

.field private g:Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->h:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->b:Ljava/lang/String;

    new-instance v0, Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    invoke-direct {v0}, Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->c:Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    const-string v0, "com.netease.ntunisdk.ngplugin.PluginManager"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    new-instance p1, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;-><init>(Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->g:Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;

    invoke-direct {p1}, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->g:Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;

    :goto_0
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->h:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->h:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->h:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->h:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->h:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "get PluginManagerProxy Exception"

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    new-instance p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    const-string v0, "null"

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public getApplySkin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getApplySkin()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColor(I)Ljava/lang/Integer;
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->g:Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getColor(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getDimensionPixelOffset(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getDimensionPixelOffset(I)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method public getDimensionPixelOffset(Ljava/lang/String;)I
    .locals 3

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->e:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->d:Ljava/lang/String;

    const-string v2, "dimen"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->g:Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getDynamicTextSwitch()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getDynamicTextSwitch()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getId(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method public getId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->e:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getOriginActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->getOriginActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOriginActivity Failed, Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    return-object p1
.end method

.method public getOriginAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getOriginAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getOriginResources()Landroid/content/res/Resources;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getOriginResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->e:Landroid/content/res/Resources;

    return-object v0
.end method

.method public declared-synchronized getProxyActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getProxyActivity(Ljava/lang/String;Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    monitor-exit p0

    return-object p1

    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProxyActivity Failed, Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public getSkinManagerProxy()Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->g:Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;

    return-object v0
.end method

.method public getSkinResources()Landroid/content/res/Resources;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->e:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->d:Ljava/lang/String;

    const-string v1, "string"

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initPlugin(Landroid/app/Activity;Landroid/content/res/Resources;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    .locals 7

    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->e:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->c:Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;->init(Landroid/content/Context;)V

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->d:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->initPlugin(Landroid/app/Activity;Landroid/content/res/Resources;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_2

    invoke-interface {p5}, Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;->onFinish()V

    :cond_2
    :goto_1
    return-void
.end method

.method public initPlugin(Landroid/app/Activity;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    .locals 8

    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->e:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->c:Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;->init(Landroid/content/Context;)V

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->d:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->initPlugin(Landroid/app/Activity;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V

    goto :goto_1

    :cond_1
    if-eqz p6, :cond_2

    invoke-interface {p6}, Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;->onFinish()V

    :cond_2
    :goto_1
    return-void
.end method

.method public loadSounds()V
    .locals 2

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->g:Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->loadSounds(Landroid/content/res/AssetManager;)V

    :cond_0
    return-void
.end method

.method public onCreatedViewGroup(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->onCreatedViewGroup(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public playSound(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->playSound(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->c:Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;->playSound(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerDynamic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;
    .locals 8

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->registerDynamic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    iget-object p5, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->b:Ljava/lang/String;

    invoke-direct {p1, p5, p2, p3, p4}, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDynamicTextSwitch(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->setDynamicTextSwitch(Z)V

    :cond_0
    return-void
.end method

.method public setPlaySoundVolume(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->setPlaySoundVolume(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->c:Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;->setPlaySoundVolume(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPluginLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->setPluginLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTextColor(Landroid/view/View;I)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->g:Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/SkinManagerProxy;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->setTextColor(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updatePluginLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->updatePluginLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateText(Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;)V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->f:Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->updateText(Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;)V

    :cond_0
    return-void
.end method

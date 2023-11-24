.class public Lcom/netease/ntunisdk/ngplugin/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field public static final FORCE_SWITCH_SKIN:Ljava/lang/String; = "force_switch_skin"

.field public static final SDK_NAME:Ljava/lang/String; = "NGPLUGIN"

.field public static final TAG:Ljava/lang/String; = "PluginManager"

.field public static final VERSION:Ljava/lang/String; = "1.5.3"

.field private static final pluginManagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/ngplugin/PluginManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private init:Z

.field private jfGameId:Ljava/lang/String;

.field private final pluginFile:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

.field private final pluginKey:Ljava/lang/String;

.field private pluginLanguage:Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

.field private final skinCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

.field private final soundBox:Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginManagerMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->init:Z

    .line 64
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginKey:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    invoke-direct {v0}, Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->soundBox:Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    .line 66
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginFile:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

    .line 67
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    .line 68
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->setDynamicTextSwitch(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/ngplugin/PluginManager;)Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/ngplugin/PluginManager;)Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginLanguage:Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/ngplugin/PluginManager;)Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->soundBox:Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/ngplugin/PluginManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$400(Landroid/app/Activity;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->callAllSkinCallback(Landroid/app/Activity;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method static synthetic access$500(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->clearSkinCallbackList(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method private static callAllSkinCallback(Landroid/app/Activity;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;",
            ">;)V"
        }
    .end annotation

    .line 202
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/PluginManager$3;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager$3;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static clearSkinCallbackList(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;

    .line 218
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;
    .locals 3

    .line 75
    :try_start_0
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginManagerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginManagerMap:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :try_start_1
    sget-object v1, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginManagerMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "start create PluginManager"

    .line 78
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 79
    new-instance v1, Lcom/netease/ntunisdk/ngplugin/PluginManager;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;-><init>(Ljava/lang/String;)V

    .line 80
    sget-object v2, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginManagerMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
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

    .line 84
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginManagerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "get PluginManager\uff0creturn null PluginManager"

    .line 86
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 87
    invoke-static {p0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 88
    new-instance p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;

    const-string v0, "null"

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private getPluginFile()Lcom/netease/ntunisdk/ngplugin/core/PluginFile;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginFile:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

    return-object v0
.end method

.method private getPluginLanguage()Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginLanguage:Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

    const-string v1, "en"

    const-string v2, "US"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->init:Z

    if-nez v0, :cond_1

    const-string v0, "PluginManagerfirst create, init the PluginManager"

    .line 104
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->initConfig(Landroid/content/Context;)V

    .line 106
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;->init(Landroid/content/Context;)V

    .line 107
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->soundBox:Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;->init(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->init:Z

    goto :goto_0

    :cond_1
    const-string p1, "PluginManager has been init and will not be initialized again"

    .line 112
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setDynamicTextAppMode(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 461
    :cond_0
    sput p0, Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;->TEXT_APP_MODE:I

    :cond_1
    return-void
.end method

.method public static setTextServerFlag(Ljava/lang/String;)V
    .locals 1

    .line 466
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    sput-object p0, Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;->TEXT_SERVER_FLAG:Ljava/lang/String;

    .line 468
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->registerAll()V

    :cond_0
    return-void
.end method

.method public static updateConfig(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "host"

    .line 474
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 475
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-os"

    .line 476
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "0"

    .line 477
    sput-object p0, Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;->TEXT_SERVER_FLAG:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "1"

    .line 479
    sput-object p0, Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;->TEXT_SERVER_FLAG:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getApplySkin()Z
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getApplySkin()Z

    move-result v0

    return v0
.end method

.method public getDimensionPixelOffset(I)I
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method public getDimensionPixelOffset(Ljava/lang/String;)I
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized getDynamicTextSwitch()Z
    .locals 1

    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getDynamicTextSwitch()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId(I)I
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getId(I)I

    move-result p1

    return p1
.end method

.method public getId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getOriginAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getOriginResources()Landroid/content/res/Resources;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getProxyActivity(Ljava/lang/String;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 3

    const-string v0, "androidx.appcompat.app.AppCompatActivity"

    .line 534
    instance-of v1, p2, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;

    if-eqz v1, :cond_0

    return-object p2

    .line 537
    :cond_0
    instance-of v1, p2, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;

    if-nez v1, :cond_4

    instance-of v1, p2, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 541
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 542
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    return-object p2

    :catch_0
    const-string v1, "android AppCompatActivity is not allowed to skin like this"

    .line 546
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 550
    :cond_2
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 551
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_3

    return-object p2

    :catch_1
    const-string v0, "support AppCompatActivity is not allowed to skin like this"

    .line 555
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 560
    :cond_3
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getApplySkin()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 561
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;

    invoke-direct {v0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    return-object v0

    :cond_4
    :goto_0
    return-object p2
.end method

.method public getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    return-object v0
.end method

.method public getSkinResources()Landroid/content/res/Resources;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getSkinResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSoundBox()Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->soundBox:Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    return-object v0
.end method

.method public getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 352
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 355
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "PluginManager getString failed"

    .line 358
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 359
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 361
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    const-string p2, "PluginManger getOriginString failed"

    .line 363
    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 364
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1
.end method

.method public varargs getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 395
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 398
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "PluginManger getString for id and format string"

    .line 401
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 402
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 404
    :try_start_1
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    const-string p2, "PluginManger getOriginString for id and format string"

    .line 406
    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 407
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 378
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "PluginManger getString for string name"

    .line 380
    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 381
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public initPlugin(Landroid/app/Activity;Landroid/content/res/Resources;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    .locals 6

    :try_start_0
    const-string v0, "start initPlugin"

    .line 127
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plugin file path\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->init(Landroid/content/Context;)V

    .line 130
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->init(Landroid/content/Context;Landroid/content/res/Resources;)V

    if-eqz p5, :cond_0

    .line 132
    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_2

    .line 134
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginFile:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

    iget-object v3, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginLanguage:Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

    new-instance v5, Lcom/netease/ntunisdk/ngplugin/PluginManager$1;

    invoke-direct {v5, p0, p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager$1;-><init>(Lcom/netease/ntunisdk/ngplugin/PluginManager;Landroid/app/Activity;)V

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->init(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "the plugin of path id null or empty string"

    .line 135
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->setApplySkin(Z)V

    if-eqz p5, :cond_3

    .line 139
    invoke-interface {p5}, Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;->onFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    const-string p2, "init plugin failed"

    .line 154
    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 155
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public initPlugin(Landroid/app/Activity;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    .locals 7

    :try_start_0
    const-string v0, "start initPlugin"

    .line 169
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plugin file path\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Package file path\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->init(Landroid/content/Context;)V

    .line 172
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->init(Landroid/content/Context;Landroid/content/res/Resources;)V

    if-eqz p6, :cond_0

    .line 174
    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p4, :cond_2

    .line 176
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginFile:Lcom/netease/ntunisdk/ngplugin/core/PluginFile;

    iget-object v4, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginLanguage:Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

    new-instance v6, Lcom/netease/ntunisdk/ngplugin/PluginManager$2;

    invoke-direct {v6, p0, p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager$2;-><init>(Lcom/netease/ntunisdk/ngplugin/PluginManager;Landroid/app/Activity;)V

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "the plugin of path id null or empty string"

    .line 177
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->setApplySkin(Z)V

    if-eqz p6, :cond_3

    .line 180
    invoke-interface {p6}, Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;->onFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    const-string p2, "init plugin failed"

    .line 195
    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 196
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public initSoundBox(Landroid/content/Context;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->soundBox:Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;->init(Landroid/content/Context;)V

    return-void
.end method

.method public loadSoundBox()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->soundBox:Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;->loadSounds(Landroid/content/res/AssetManager;)V

    :cond_0
    return-void
.end method

.method public loadSounds(Landroid/content/res/AssetManager;)V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->soundBox:Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;->loadSounds(Landroid/content/res/AssetManager;)V

    return-void
.end method

.method public onCreatedViewGroup(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2

    :try_start_0
    const-string v0, "start onCreatedViewGroup"

    .line 424
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 427
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->hookLayoutInflater(Landroid/view/LayoutInflater;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {v0, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 433
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "onCreatedViewGroup failed, return origin viewGroup"

    .line 436
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 437
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 438
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public playSound(I)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->soundBox:Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;->playSound(I)V

    return-void
.end method

.method public registerDynamic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;
    .locals 4

    const-string v0, " region: "

    const-string v1, "the module init status: language: "

    :try_start_0
    const-string v2, "registerDynamic Text"

    .line 307
    invoke-static {v2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 310
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 312
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->jfGameId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->jfGameId:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 313
    :cond_0
    iput-object p4, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->jfGameId:Ljava/lang/String;

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start register dynamic text, project:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 316
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->init(Landroid/content/Context;)V

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;->TEXT_SERVER_REGION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&cv="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&cp=a&app_id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&app_mode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;->TEXT_APP_MODE:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 319
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p5}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->getTextValue()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, v1, p1, p5, p6}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->register(ZLjava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V

    goto :goto_0

    :cond_1
    const-string p1, "There are nulls in the three configuration parameters, dynamic register  failed"

    .line 322
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 324
    :cond_2
    :goto_0
    new-instance p1, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    iget-object p5, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginKey:Ljava/lang/String;

    invoke-direct {p1, p5, p2, p3, p4}, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p5, "dynamic text register failed "

    .line 326
    invoke-static {p5}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 327
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 328
    new-instance p1, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    iget-object p5, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginKey:Ljava/lang/String;

    invoke-direct {p1, p5, p2, p3, p4}, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 228
    :try_start_0
    iput-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->init:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDynamicTextSwitch(Z)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->enableDynamicText(Z)V

    return-void
.end method

.method public setPlaySoundVolume(F)V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->soundBox:Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/common/res/SoundBox;->setPlaySoundVolume(F)V

    return-void
.end method

.method public setPluginLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 240
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

    invoke-direct {v0, p1, p2, p3}, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginLanguage:Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

    return-void
.end method

.method public updatePluginLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 443
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

    invoke-direct {v0, p1, p2, p3}, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :try_start_0
    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->pluginLanguage:Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

    .line 446
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/PluginManager;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->updateLanguage(Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "updatePluginLanguage failed"

    .line 448
    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 449
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public updateText(Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;)V
    .locals 2

    .line 334
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dynamic text start updateText, Language : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->getTextValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 336
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->getUrlKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->getTextValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->updateRegion(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "dynamic text updateText Failed"

    .line 339
    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 340
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

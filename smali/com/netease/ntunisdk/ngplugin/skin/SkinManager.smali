.class public Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;
.super Ljava/lang/Object;
.source "SkinManager.java"


# static fields
.field public static final MPAY_SKIN_DEFAULT:Ljava/lang/String; = "default"

.field private static final SKIN_FONT_PATH_IN_ASSETS:Ljava/lang/String; = "fonts/font.ttf"

.field private static forceShutdownSkin:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final dynamicTextSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field mSkinLoaded:Z

.field private originPackageName:Ljava/lang/String;

.field private originResources:Landroid/content/res/Resources;

.field private final pluginKey:Ljava/lang/String;

.field private skinPackageName:Ljava/lang/String;

.field private skinResources:Landroid/content/res/Resources;

.field private skinTypeface:Landroid/graphics/Typeface;

.field private skinVersionVerify:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->dynamicTextSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 441
    iput-boolean v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->mSkinLoaded:Z

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->forceShutdownSkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    iput-boolean v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinVersionVerify:Z

    .line 51
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginKey:Ljava/lang/String;

    return-void
.end method

.method private getIdentifier(I)I
    .locals 3

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_0

    return p1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setSkinResourcesManager(Landroid/content/Context;Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;ZZ)V
    .locals 9

    .line 142
    iget-object v0, p2, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinPackageName:Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p2, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    .line 144
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinPackageName:Ljava/lang/String;

    move-object v1, v0

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;-><init>(Landroid/content/res/Resources;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    .line 146
    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginKey:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->getTypeface(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinTypeface:Landroid/graphics/Typeface;

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "load public typeface: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinTypeface:Landroid/graphics/Typeface;

    if-nez p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginKey:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->getTypeface(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinTypeface:Landroid/graphics/Typeface;

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "load default typeface: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateResources()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    if-eqz v1, :cond_0

    .line 375
    check-cast v0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->setApplySkin(Z)V

    :cond_0
    return-void
.end method

.method private updateResourcesLanguage(Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;Landroid/content/res/Resources;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 403
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 404
    invoke-virtual {p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->getPluginLocale()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 405
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    .line 406
    invoke-virtual {p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->getPluginLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->getPluginLocale()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public antiGetIdentifier(I)I
    .locals 3

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7f

    if-lt v0, v1, :cond_0

    return p1

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 181
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public disableSkin()V
    .locals 0

    return-void
.end method

.method public enableDynamicText(Z)V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->dynamicTextSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 427
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    instance-of v1, v0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;

    if-eqz v1, :cond_0

    .line 428
    check-cast v0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;->setEnableDynamicText(Z)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    instance-of v1, v0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    if-eqz v1, :cond_1

    .line 431
    check-cast v0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->setEnableDynamicText(Z)V

    :cond_1
    return-void
.end method

.method public declared-synchronized getApplySkin()Z
    .locals 1

    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->forceShutdownSkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getSkinResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "bool"

    .line 258
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 259
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public getColor(Ljava/lang/String;)I
    .locals 1

    const-string v0, "color"

    .line 273
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 274
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getColor(I)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 2

    const/4 v0, 0x0

    .line 522
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getDimensionPixelOffset(Ljava/lang/String;)I
    .locals 1

    const-string v0, "dimen"

    .line 228
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 229
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method public getDimensionPixelSize(Ljava/lang/String;)I
    .locals 1

    const-string v0, "dimen"

    .line 303
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 304
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "drawable"

    .line 318
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 319
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getDynamicTextSwitch()Z
    .locals 1

    monitor-enter p0

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->dynamicTextSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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

    .line 191
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 194
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getIdentifier(I)I

    move-result p1

    return p1
.end method

.method public getId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getSkinId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 209
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 1

    const-string v0, "integer"

    .line 288
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 289
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method public getOriginId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getOriginResources()Landroid/content/res/Resources;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getPixelSize(I)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getSkinResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSkinId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getSkinResources()Landroid/content/res/Resources;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSkinTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "string"

    .line 243
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 244
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinTypeface:Landroid/graphics/Typeface;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 119
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->forceShutdownSkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->getForceShutdownSkin(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 121
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->dynamicTextSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    move-object v2, v0

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/Resources;Z)V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    .line 123
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 124
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SkinResourcesManager application package name get failed"

    .line 126
    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p1, "init SkinResourcesManager input context is null"

    .line 130
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isDefaultSkin()Z
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getApplySkin()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSkinReady()Z
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getApplySkin()Z

    move-result v0

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSkinReady\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    return v0
.end method

.method public isSkinVersionVerify()Z
    .locals 1

    .line 380
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinVersionVerify:Z

    return v0
.end method

.method public ismSkinLoaded()Z
    .locals 1

    .line 444
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->mSkinLoaded:Z

    return v0
.end method

.method public declared-synchronized setApplySkin(Z)V
    .locals 2

    monitor-enter p0

    .line 356
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setApplySkin\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setForceShutdownSkin(ZLandroid/content/Context;)V
    .locals 3

    monitor-enter p0

    .line 362
    :try_start_0
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->forceShutdownSkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 363
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 364
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->updateResources()V

    if-eqz p1, :cond_1

    .line 366
    invoke-static {p2, v1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->saveForceShutdownSkin(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 369
    :try_start_1
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public setLinkTextColor(Landroid/view/View;I)V
    .locals 1

    .line 554
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->setLinkTextColor(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 558
    :cond_0
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getColor(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 560
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->setLinkTextColor(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSkinVersionVerify(Z)V
    .locals 0

    .line 384
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinVersionVerify:Z

    return-void
.end method

.method public setTextColor(Landroid/view/View;I)V
    .locals 1

    .line 542
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->setTextColor(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getColor(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 548
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->setTextColor(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setmSkinLoaded(Z)V
    .locals 0

    .line 448
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->mSkinLoaded:Z

    return-void
.end method

.method public updateLanguage(Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;)V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->updateResourcesLanguage(Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;Landroid/content/res/Resources;)V

    .line 398
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->updateResourcesLanguage(Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;Landroid/content/res/Resources;)V

    return-void
.end method

.method public updateResourcesConfig(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    return-void
.end method

.method public upgradeResource(Landroid/content/Context;Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;)V
    .locals 7

    if-eqz p2, :cond_0

    .line 333
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 334
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->dynamicTextSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->setSkinResourcesManager(Landroid/content/Context;Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;ZZ)V

    goto :goto_0

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 337
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    instance-of p2, p1, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    if-eqz p2, :cond_1

    .line 338
    check-cast p1, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->setApplySkin(Z)V

    .line 339
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    check-cast p1, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->dynamicTextSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->setEnableDynamicText(Z)V

    .line 341
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    instance-of p2, p1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;

    if-eqz p2, :cond_2

    .line 342
    check-cast p1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;

    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->dynamicTextSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;->setEnableDynamicText(Z)V

    :cond_2
    :goto_0
    return-void
.end method

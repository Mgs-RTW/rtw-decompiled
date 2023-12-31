.class public Lcom/netease/mpay/oversea/scan/tools/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeLanguage(Landroid/app/Activity;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)V
    .locals 3

    if-eqz p0, :cond_3

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 139
    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tools/Utils;->changeLocale(Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Ljava/util/Locale;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 141
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_2

    .line 142
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 144
    :cond_2
    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 146
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 146
    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static changeLocale(Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Ljava/util/Locale;
    .locals 0

    .line 151
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Utils;->getLocale(Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Ljava/util/Locale;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 153
    invoke-static {p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :cond_0
    return-object p0
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 215
    :try_start_0
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Utils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 216
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez p0, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method private static getLocale(Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Ljava/util/Locale;
    .locals 2

    if-nez p0, :cond_0

    .line 160
    sget-object p0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->EN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 162
    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->getRegion()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 3

    const-string v0, "window"

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 63
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 64
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 65
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 69
    :goto_0
    iget p0, v0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 3

    const-string v0, "window"

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 46
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 48
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 52
    :goto_0
    iget p0, v0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;I)I
    .locals 3

    .line 126
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 127
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return p1
.end method

.method public static getString(Landroid/content/Context;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 187
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 189
    :try_start_0
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/scan/tools/Utils;->updateResources(Landroid/content/Context;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 190
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 192
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 193
    :cond_3
    throw p0
.end method

.method public static getString(Landroid/content/Context;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 200
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 202
    :try_start_0
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/scan/tools/Utils;->updateResources(Landroid/content/Context;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 203
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 205
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 206
    :cond_3
    throw p0
.end method

.method private static getTargetSdkVersion(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 227
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 227
    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 232
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 230
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method public static getTimeOffset()Ljava/lang/String;
    .locals 3

    .line 243
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZone()Ljava/lang/String;
    .locals 1

    .line 238
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasPhoneStatePermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 210
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/scan/tools/Utils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hideNavigationBar(Landroid/view/Window;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 94
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    const/16 v0, 0x8

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x1706

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 108
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static isFinishing(Landroid/app/Activity;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x11

    .line 114
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 1

    .line 30
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 33
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setUseCutoutAboveP(Landroid/app/Activity;)V
    .locals 2

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 84
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private static updateResources(Landroid/content/Context;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Landroid/content/res/Resources;
    .locals 4

    if-nez p1, :cond_0

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    .line 169
    :cond_0
    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tools/Utils;->getLocale(Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Ljava/util/Locale;

    move-result-object p1

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 172
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 173
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 174
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    .line 176
    :cond_1
    iput-object p1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 177
    new-instance p1, Landroid/content/res/Resources;

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-direct {p1, p0, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object p1
.end method

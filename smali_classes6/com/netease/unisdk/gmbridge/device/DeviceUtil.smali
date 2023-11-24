.class public Lcom/netease/unisdk/gmbridge/device/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 58
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "unknown"

    return-object p0
.end method

.method public static getDeviceInfo(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/device/DeviceInfo;
    .locals 3

    .line 19
    new-instance v0, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;

    invoke-direct {v0}, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;-><init>()V

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->packageName:Ljava/lang/String;

    .line 22
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/device/DeviceUtil;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->appVersion:Ljava/lang/String;

    .line 23
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/device/DeviceUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->appName:Ljava/lang/String;

    .line 24
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p0, v0, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->deviceModel:Ljava/lang/String;

    .line 25
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object p0, v0, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->osVersion:Ljava/lang/String;

    const-string p0, "android"

    .line 26
    iput-object p0, v0, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->platform:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->language:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->getVersion()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->gmSdkVersion:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/netease/unisdk/gmbridge/utils/StorageUtil;->getAvailableInternalMemorySize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/SafeCastUtil;->convert2UnitStr(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->freePhoneSpace:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/netease/unisdk/gmbridge/utils/StorageUtil;->getTotalInternalMemorySize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/SafeCastUtil;->convert2UnitStr(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->totalPhoneSpace:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/netease/unisdk/gmbridge/utils/StorageUtil;->getAvailableExternalMemorySize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/SafeCastUtil;->convert2UnitStr(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->freeSDCardSpace:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/netease/unisdk/gmbridge/utils/StorageUtil;->getTotalExternalMemorySize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/SafeCastUtil;->convert2UnitStr(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->totalSDCardSpace:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 44
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 45
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "unknown"

    return-object p0
.end method

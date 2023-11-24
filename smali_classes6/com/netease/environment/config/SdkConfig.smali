.class public Lcom/netease/environment/config/SdkConfig;
.super Ljava/lang/Object;
.source "SdkConfig.java"


# static fields
.field private static final CONFIG_DOWNLOADING:Ljava/lang/String; = "downlaoding"

.field private static final CONFIG_ENABLE:Ljava/lang/String; = "enable"

.field private static final CONFIG_REGEX_FILE_URL:Ljava/lang/String; = "regex_file_url"

.field private static final CONFIG_TASK_TIMEOUT:Ljava/lang/String; = "task_timeout"

.field private static final CONFIG_UPDATE_DATE_TIME:Ljava/lang/String; = "update_data_time"

.field private static final CONFIG_UPDATE_INTERVAL:Ljava/lang/String; = "update_interval"

.field private static final PREFERENCES_CONFIG:Ljava/lang/String; = "environment_preferences_config"

.field private static mPreferencesInstance:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/config/SdkConfig;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/config/SdkConfig;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/config/SdkConfig;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    if-nez p0, :cond_0

    return-wide p2

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/config/SdkConfig;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getRegexFileUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regex_file_url_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-static {p0, p1, p2}, Lcom/netease/environment/config/SdkConfig;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 19
    sget-object v0, Lcom/netease/environment/config/SdkConfig;->mPreferencesInstance:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "environment_preferences_config"

    const v1, 0x8000

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/netease/environment/config/SdkConfig;->mPreferencesInstance:Landroid/content/SharedPreferences;

    .line 22
    :cond_0
    sget-object p0, Lcom/netease/environment/config/SdkConfig;->mPreferencesInstance:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    return-object p2

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/config/SdkConfig;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTaskTimeout(Landroid/content/Context;J)J
    .locals 1

    const-string v0, "task_timeout"

    .line 186
    invoke-static {p0, v0, p1, p2}, Lcom/netease/environment/config/SdkConfig;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getUpdateDataTime(Landroid/content/Context;J)J
    .locals 1

    const-string v0, "update_data_time"

    .line 106
    invoke-static {p0, v0, p1, p2}, Lcom/netease/environment/config/SdkConfig;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getUpdateInterval(Landroid/content/Context;J)J
    .locals 1

    const-string v0, "update_interval"

    .line 167
    invoke-static {p0, v0, p1, p2}, Lcom/netease/environment/config/SdkConfig;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static isDownloading(Landroid/content/Context;Z)Z
    .locals 1

    const-string v0, "downlaoding"

    .line 125
    invoke-static {p0, v0, p1}, Lcom/netease/environment/config/SdkConfig;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isEnable(Landroid/content/Context;Z)Z
    .locals 1

    const-string v0, "enable"

    .line 148
    invoke-static {p0, v0, p1}, Lcom/netease/environment/config/SdkConfig;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/config/SdkConfig;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 37
    :cond_1
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putFloat(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/config/SdkConfig;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 45
    :cond_1
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/config/SdkConfig;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 53
    :cond_1
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/config/SdkConfig;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 61
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/config/SdkConfig;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 29
    :cond_1
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveDownloadState(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "downlaoding"

    .line 115
    invoke-static {p0, v0, p1}, Lcom/netease/environment/config/SdkConfig;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static saveEnableState(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "enable"

    .line 134
    invoke-static {p0, v0, p1}, Lcom/netease/environment/config/SdkConfig;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static saveRegexFileUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regex_file_url_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {p0, p1, p2}, Lcom/netease/environment/config/SdkConfig;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveTaskTimeout(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "task_timeout"

    .line 176
    invoke-static {p0, v0, p1, p2}, Lcom/netease/environment/config/SdkConfig;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static saveUpdateDataTime(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "update_data_time"

    .line 96
    invoke-static {p0, v0, p1, p2}, Lcom/netease/environment/config/SdkConfig;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static saveUpdateInterval(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "update_interval"

    .line 157
    invoke-static {p0, v0, p1, p2}, Lcom/netease/environment/config/SdkConfig;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.class public final Lcom/appsflyer/internal/event/uninstall/Register;
.super Lcom/appsflyer/internal/model/event/BackgroundEvent;
.source ""


# static fields
.field public static final TOKEN_PAYLOAD_KEY:Ljava/lang/String; = "af_gcm_token"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final TOKEN_PERSIST_KEY:Ljava/lang/String; = "afUninstallToken"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final TOKEN_RECEIVED_TIME_PERSIST_KEY:Ljava/lang/String; = "afUninstallToken_received_time"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static URL:Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final getDataFormatter:Landroid/content/SharedPreferences;


# direct methods
.method static synthetic $$a(Lcom/appsflyer/internal/event/uninstall/Register;)V
    .locals 3

    .prologue
    .line 33
    .line 3102
    iget-object v0, p0, Lcom/appsflyer/internal/event/uninstall/Register;->getDataFormatter:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sentRegisterRequestToAF"

    const/4 v2, 0x1

    .line 3103
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3105
    const-string v0, "Successfully registered for Uninstall Tracking"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private $$b()Lcom/appsflyer/AFFacebookDeferredDeeplink;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 110
    iget-object v1, p0, Lcom/appsflyer/internal/event/uninstall/Register;->getDataFormatter:Landroid/content/SharedPreferences;

    const-string v2, "afUninstallToken"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/appsflyer/internal/event/uninstall/Register;->getDataFormatter:Landroid/content/SharedPreferences;

    const-string v3, "afUninstallToken_received_time"

    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 112
    iget-object v4, p0, Lcom/appsflyer/internal/event/uninstall/Register;->getDataFormatter:Landroid/content/SharedPreferences;

    const-string v5, "afUninstallToken_queued"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 113
    iget-object v5, p0, Lcom/appsflyer/internal/event/uninstall/Register;->getDataFormatter:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "afUninstallToken_queued"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    if-nez v1, :cond_0

    .line 116
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    const-string v6, "afUninstallToken"

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 117
    if-eqz v5, :cond_0

    .line 118
    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 119
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v1, v1, v5

    .line 122
    :cond_0
    cmp-long v5, v2, v8

    if-nez v5, :cond_1

    .line 123
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    const-string v6, "afUninstallToken"

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    if-eqz v5, :cond_1

    .line 125
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 126
    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 128
    :try_start_0
    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 134
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    new-instance v0, Lcom/appsflyer/AFFacebookDeferredDeeplink;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/AFFacebookDeferredDeeplink;-><init>(Ljava/lang/String;JZ)V

    :cond_2
    return-object v0

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private $$b(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/appsflyer/AFEvent;->context()Landroid/app/Application;

    move-result-object v1

    .line 147
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLibCore;->waitingForId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "CustomerUserId not set, Tracking is disabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 226
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v0, "AppsFlyerKey"

    invoke-virtual {v2, v0}, Lcom/appsflyer/AppsFlyerLibCore;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    if-nez v3, :cond_1

    .line 154
    const-string v0, "[registerUninstall] AppsFlyer\'s SDK cannot send any event without providing DevKey."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 158
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 161
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 162
    iget-object v5, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v6, "app_version_code"

    iget v7, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v5, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v6, "app_version_name"

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v5, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v6, "app_name"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-wide v4, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 169
    const-string v0, "yyyy-MM-dd_HHmmssZ"

    invoke-static {v0}, Lcom/appsflyer/AFDateFormat;->getDataFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 170
    iget-object v6, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v7, "installDate"

    invoke-virtual {v2, v0, v4, v5}, Lcom/appsflyer/AppsFlyerLibCore;->dateFormatUTC(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_1
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    invoke-virtual {v2, v1, v0}, Lcom/appsflyer/AppsFlyerLibCore;->addNetworkData(Landroid/content/Context;Ljava/util/Map;)V

    .line 176
    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLibCore;->getCustomerUserId()Ljava/lang/String;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_2

    .line 178
    iget-object v4, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v5, "appUserId"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v4, "model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v4, "brand"

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    :goto_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v4, "deviceTrackingDisabled"

    invoke-virtual {v0, v4, v8}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 189
    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v4, "deviceTrackingDisabled"

    const-string v5, "true"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AdvertisingIdUtil;->getAmazonAID(Landroid/content/ContentResolver;)Lcom/appsflyer/AdvertisingIdObject;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_4

    .line 194
    iget-object v4, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v5, "amazon_aid"

    invoke-virtual {v0}, Lcom/appsflyer/AdvertisingIdObject;->getAdvertisingId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v4, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v5, "amazon_aid_limit"

    invoke-virtual {v0}, Lcom/appsflyer/AdvertisingIdObject;->isLimitAdTracking()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_4
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v4, "advertiserId"

    invoke-virtual {v0, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_5

    .line 199
    iget-object v4, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v5, "advertiserId"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v4, "devkey"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v3, "uid"

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/appsflyer/Installation;->id(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v3, "af_gcm_token"

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/appsflyer/internal/event/uninstall/Register;->getDataFormatter:Landroid/content/SharedPreferences;

    invoke-virtual {v2, v0, v8}, Lcom/appsflyer/AppsFlyerLibCore;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

    move-result v0

    .line 205
    iget-object v3, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v4, "launch_counter"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v3, "sdk"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {v2, v1}, Lcom/appsflyer/AppsFlyerLibCore;->getConfiguredChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_6

    .line 209
    iget-object v1, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    const-string v3, "channel"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appsflyer/internal/event/uninstall/Register$2;

    invoke-direct {v1, p0, v2}, Lcom/appsflyer/internal/event/uninstall/Register$2;-><init>(Lcom/appsflyer/internal/event/uninstall/Register;Lcom/appsflyer/AppsFlyerLibCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string v4, "Exception while collecting application version info."

    invoke-static {v4, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 184
    :catch_1
    move-exception v0

    .line 185
    const-string v4, "Exception while collecting device brand and model."

    invoke-static {v4, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://%sregister.%s/api/v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/appsflyer/AppsFlyerLibCore;->BUILD_URL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/event/uninstall/Register;->URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appsflyer/internal/event/uninstall/Register;->URL:Ljava/lang/String;

    .line 50
    invoke-static {v2}, Lcom/appsflyer/ServerConfigHandler;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, p1

    .line 48
    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/internal/model/event/BackgroundEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 55
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/event/uninstall/Register;->getDataFormatter:Landroid/content/SharedPreferences;

    .line 56
    return-void
.end method

.method public static didConfiguredFirebaseMessagingServiceListener(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    :try_start_0
    const-string v1, "com.google.firebase.messaging.FirebaseMessagingService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 65
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.firebase.MESSAGING_EVENT"

    const/4 v3, 0x0

    const-class v4, Lcom/appsflyer/FirebaseMessagingServiceListener;

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    invoke-static {p0, v1}, Lcom/appsflyer/AndroidUtils;->isServiceAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    const-string v2, "An error occurred while trying to verify manifest declarations: "

    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 70
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static isSent(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    const-string v0, "sentRegisterRequestToAF"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final send(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    if-eqz p1, :cond_2

    .line 80
    const-string v0, "Firebase Refreshed Token = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/appsflyer/internal/event/uninstall/Register;->$$b()Lcom/appsflyer/AFFacebookDeferredDeeplink;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 1015
    iget-object v3, v0, Lcom/appsflyer/AFFacebookDeferredDeeplink;->AFDateFormat:Ljava/lang/String;

    .line 82
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 84
    iget-object v3, p0, Lcom/appsflyer/internal/event/uninstall/Register;->getDataFormatter:Landroid/content/SharedPreferences;

    invoke-static {v3}, Lcom/appsflyer/AppsFlyerLibCore;->firstCallSent(Landroid/content/SharedPreferences;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_1

    .line 1019
    iget-wide v6, v0, Lcom/appsflyer/AFFacebookDeferredDeeplink;->$$b:J

    .line 84
    sub-long v6, v4, v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x2

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    :cond_1
    move v0, v1

    .line 85
    :goto_0
    new-instance v3, Lcom/appsflyer/AFFacebookDeferredDeeplink;

    if-nez v0, :cond_4

    :goto_1
    invoke-direct {v3, p1, v4, v5, v1}, Lcom/appsflyer/AFFacebookDeferredDeeplink;-><init>(Ljava/lang/String;JZ)V

    .line 1138
    iget-object v1, p0, Lcom/appsflyer/internal/event/uninstall/Register;->getDataFormatter:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "afUninstallToken"

    .line 2015
    iget-object v4, v3, Lcom/appsflyer/AFFacebookDeferredDeeplink;->AFDateFormat:Ljava/lang/String;

    .line 1139
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "afUninstallToken_received_time"

    .line 2019
    iget-wide v4, v3, Lcom/appsflyer/AFFacebookDeferredDeeplink;->$$b:J

    .line 1140
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "afUninstallToken_queued"

    .line 1141
    invoke-virtual {v3}, Lcom/appsflyer/AFFacebookDeferredDeeplink;->AFDateFormat()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1142
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/event/uninstall/Register;->$$b(Ljava/lang/String;)V

    .line 89
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 84
    goto :goto_0

    :cond_4
    move v1, v2

    .line 85
    goto :goto_1
.end method

.method public final sendIfQueued()V
    .locals 3

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/appsflyer/internal/event/uninstall/Register;->$$b()Lcom/appsflyer/AFFacebookDeferredDeeplink;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appsflyer/AFFacebookDeferredDeeplink;->AFDateFormat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3015
    iget-object v0, v0, Lcom/appsflyer/AFFacebookDeferredDeeplink;->AFDateFormat:Ljava/lang/String;

    .line 96
    const-string v1, "Resending Uninstall token to AF servers: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/event/uninstall/Register;->$$b(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

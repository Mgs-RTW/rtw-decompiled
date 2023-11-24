.class final Lcom/appsflyer/internal/referrer/GoogleReferrer$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/referrer/GoogleReferrer;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/referrer/GoogleReferrer;Landroid/content/Context;Lcom/android/installreferrer/api/InstallReferrerClient;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iput-object p2, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallReferrerServiceDisconnected()V
    .locals 1

    .prologue
    .line 150
    const-string v0, "Install Referrer service disconnected"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public final onInstallReferrerSetupFinished(I)V
    .locals 6

    .prologue
    .line 76
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v0, v0, Lcom/appsflyer/internal/referrer/GoogleReferrer;->oldMap:Ljava/util/Map;

    const-string v1, "code"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "com.android.vending"

    .line 78
    iget-object v1, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v1, v1, Lcom/appsflyer/internal/referrer/GoogleReferrer;->map:Ljava/util/Map;

    const-string v2, "api_ver"

    iget-object v3, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->val$context:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/appsflyer/AndroidUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v1, v1, Lcom/appsflyer/internal/referrer/GoogleReferrer;->map:Ljava/util/Map;

    const-string v2, "api_ver_name"

    iget-object v3, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->val$context:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/appsflyer/AndroidUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 141
    const-string v0, "responseCode not found."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 143
    :cond_0
    :goto_0
    const-string v0, "Install Referrer collected locally"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    invoke-virtual {v0}, Lcom/appsflyer/internal/referrer/GoogleReferrer;->finish()V

    .line 145
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 146
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v0, v0, Lcom/appsflyer/internal/referrer/GoogleReferrer;->map:Ljava/util/Map;

    const-string v1, "response"

    const-string v2, "OK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :try_start_0
    const-string v0, "InstallReferrer connected"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_1

    .line 89
    iget-object v2, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v2, v2, Lcom/appsflyer/internal/referrer/GoogleReferrer;->oldMap:Ljava/util/Map;

    const-string v3, "val"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v2, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v2, v2, Lcom/appsflyer/internal/referrer/GoogleReferrer;->map:Ljava/util/Map;

    const-string v3, "referrer"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_1
    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v2

    .line 93
    iget-object v1, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v1, v1, Lcom/appsflyer/internal/referrer/GoogleReferrer;->oldMap:Ljava/util/Map;

    const-string v4, "clk"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v1, v1, Lcom/appsflyer/internal/referrer/GoogleReferrer;->map:Ljava/util/Map;

    const-string v4, "click_ts"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v2

    .line 96
    iget-object v1, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v1, v1, Lcom/appsflyer/internal/referrer/GoogleReferrer;->oldMap:Ljava/util/Map;

    const-string v4, "install"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v1, v1, Lcom/appsflyer/internal/referrer/GoogleReferrer;->map:Ljava/util/Map;

    const-string v4, "install_begin_ts"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :try_start_1
    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getGooglePlayInstantParam()Z

    move-result v2

    .line 102
    iget-object v3, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v3, v3, Lcom/appsflyer/internal/referrer/GoogleReferrer;->oldMap:Ljava/util/Map;

    const-string v4, "instant"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v3, "instant"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    :goto_1
    :try_start_2
    const-string v2, "click_server_ts"

    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampServerSeconds()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v2, "install_begin_server_ts"

    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampServerSeconds()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v2, "install_version"

    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v0, v0, Lcom/appsflyer/internal/referrer/GoogleReferrer;->map:Ljava/util/Map;

    const-string v2, "google_custom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get install referrer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v1, v1, Lcom/appsflyer/internal/referrer/GoogleReferrer;->oldMap:Ljava/util/Map;

    const-string v2, "err"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 115
    :cond_2
    :try_start_4
    const-string v0, "ReferrerClient: InstallReferrer is not ready"

    .line 116
    const-string v0, "ReferrerClient: InstallReferrer is not ready"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v0, v0, Lcom/appsflyer/internal/referrer/GoogleReferrer;->oldMap:Ljava/util/Map;

    const-string v1, "err"

    const-string v2, "ReferrerClient: InstallReferrer is not ready"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 125
    :pswitch_1
    const-string v0, "InstallReferrer FEATURE_NOT_SUPPORTED"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v0, v0, Lcom/appsflyer/internal/referrer/GoogleReferrer;->map:Ljava/util/Map;

    const-string v1, "response"

    const-string v2, "FEATURE_NOT_SUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v0, v0, Lcom/appsflyer/internal/referrer/GoogleReferrer;->map:Ljava/util/Map;

    const-string v1, "response"

    const-string v2, "SERVICE_UNAVAILABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "InstallReferrer not supported"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :pswitch_3
    const-string v0, "InstallReferrer DEVELOPER_ERROR"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v0, v0, Lcom/appsflyer/internal/referrer/GoogleReferrer;->map:Ljava/util/Map;

    const-string v1, "response"

    const-string v2, "DEVELOPER_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 137
    :pswitch_4
    const-string v0, "InstallReferrer SERVICE_DISCONNECTED"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/GoogleReferrer$3;->this$0:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v0, v0, Lcom/appsflyer/internal/referrer/GoogleReferrer;->map:Ljava/util/Map;

    const-string v1, "response"

    const-string v2, "SERVICE_DISCONNECTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 111
    :catch_1
    move-exception v0

    goto/16 :goto_2

    .line 104
    :catch_2
    move-exception v2

    goto/16 :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

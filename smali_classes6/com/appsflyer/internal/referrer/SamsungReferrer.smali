.class public Lcom/appsflyer/internal/referrer/SamsungReferrer;
.super Lcom/appsflyer/internal/referrer/ContentProviderReferrer;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 35
    const-string v0, "samsung"

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/referrer/ContentProviderReferrer;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method


# virtual methods
.method public start(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    new-instance v0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;

    const-string v1, "com.sec.android.app.samsungapps.referrer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "FBA3AF4E7757D9016E953FB3EE4671CA2BD9AF725F9A53D52ED4A38EAAA08901"

    aput-object v3, v2, v4

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;-><init>(Lcom/appsflyer/internal/referrer/SamsungReferrer;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1016
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v1

    .line 1017
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/appsflyer/AppsFlyerLibCore;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

    move-result v1

    .line 1018
    if-gtz v1, :cond_0

    invoke-virtual {v0}, Lcom/appsflyer/internal/ContentFetcher;->valid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    invoke-virtual {v0}, Lcom/appsflyer/internal/ContentFetcher;->start()V

    .line 1020
    invoke-virtual {p0}, Lcom/appsflyer/internal/referrer/Referrer;->start()V

    goto :goto_0
.end method

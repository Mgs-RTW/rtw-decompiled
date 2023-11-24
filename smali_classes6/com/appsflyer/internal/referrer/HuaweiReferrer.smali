.class public Lcom/appsflyer/internal/referrer/HuaweiReferrer;
.super Lcom/appsflyer/internal/referrer/ContentProviderReferrer;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 29
    const-string v0, "huawei"

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/referrer/ContentProviderReferrer;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method


# virtual methods
.method public start(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 33
    new-instance v0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$2;

    const-string v1, "com.huawei.appmarket.commondata"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "FFE391E0EA186D0734ED601E4E70E3224B7309D48E2075BAC46D8C667EAE7212"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "3BAF59A2E5331C30675FAB35FF5FFF0D116142D3D4664F1C3CB804068B40614F"

    aput-object v4, v2, v3

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/appsflyer/internal/referrer/HuaweiReferrer$2;-><init>(Lcom/appsflyer/internal/referrer/HuaweiReferrer;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1016
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v1

    .line 1017
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/appsflyer/AppsFlyerLibCore;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

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

.class public final Lcom/appsflyer/internal/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/p$e;,
        Lcom/appsflyer/internal/p$b;
    }
.end annotation


# direct methods
.method private static $$b(Landroid/net/NetworkInfo;)Z
    .locals 1

    .prologue
    .line 29
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static values(Landroid/content/Context;)Lcom/appsflyer/internal/p$b;
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 86
    const-string v3, "unknown"

    .line 1069
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1070
    if-eqz v0, :cond_9

    .line 1073
    const/16 v4, 0x15

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v4, v5, :cond_5

    .line 2034
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    .line 2035
    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    .line 2036
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 2037
    invoke-static {v6}, Lcom/appsflyer/internal/p;->$$b(Landroid/net/NetworkInfo;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2038
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v8, v0, :cond_1

    .line 2039
    const-string v3, "WIFI"

    .line 93
    :goto_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 94
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 95
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 97
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v4, v0, :cond_a

    .line 98
    const-string v0, "CDMA"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move-object v1, v2

    move-object v2, v3

    .line 105
    :goto_3
    new-instance v3, Lcom/appsflyer/internal/p$b;

    invoke-direct {v3, v2, v0, v1}, Lcom/appsflyer/internal/p$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 2041
    :cond_1
    :try_start_3
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 2042
    const-string v3, "MOBILE"

    goto :goto_1

    .line 2044
    :cond_2
    const-string v3, "unknown"

    goto :goto_1

    .line 2035
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2047
    :cond_4
    const-string v3, "unknown"

    goto :goto_1

    .line 2051
    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/p;->$$b(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2052
    const-string v3, "WIFI"

    goto :goto_1

    .line 2054
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/p;->$$b(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2055
    const-string v3, "MOBILE"

    goto :goto_1

    .line 2057
    :cond_7
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2058
    invoke-static {v0}, Lcom/appsflyer/internal/p;->$$b(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2059
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v8, v2, :cond_8

    .line 2060
    const-string v3, "WIFI"

    goto :goto_1

    .line 2061
    :cond_8
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_9

    .line 2062
    const-string v3, "MOBILE"

    goto :goto_1

    .line 2065
    :cond_9
    const-string v3, "unknown"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    move-object v2, v3

    move-object v3, v0

    move-object v0, v1

    .line 103
    :goto_4
    const-string v4, "Exception while collecting network info. "

    invoke-static {v4, v3}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 102
    :catch_1
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v9

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v9

    goto :goto_4

    :cond_a
    move-object v0, v1

    goto :goto_2
.end method

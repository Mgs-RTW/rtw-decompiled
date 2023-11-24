.class final Lcom/appsflyer/internal/referrer/SamsungReferrer$5;
.super Lcom/appsflyer/internal/ContentFetcher;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/referrer/SamsungReferrer;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/ContentFetcher",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic values:Lcom/appsflyer/internal/referrer/SamsungReferrer;


# direct methods
.method private $$b()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 46
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/ContentFetcher;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsflyer/internal/ContentFetcher;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    iget-object v0, v0, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    const-string v2, "response"

    const-string v3, "OK"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "referrer"

    iget-object v2, p0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    iget-object v2, v2, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    invoke-static {v0, v2, v1}, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 57
    const-string v0, "click_ts"

    iget-object v2, p0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    iget-object v2, v2, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    invoke-static {v0, v2, v1}, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->valueOf(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 58
    const-string v0, "install_begin_ts"

    iget-object v2, p0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    iget-object v2, v2, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    invoke-static {v0, v2, v1}, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->valueOf(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 59
    const-string v0, "install_end_ts"

    iget-object v2, p0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    iget-object v2, v2, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    invoke-static {v0, v2, v1}, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->valueOf(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 60
    const-string v0, "organic_keywords"

    iget-object v2, p0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    iget-object v2, v2, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    invoke-static {v0, v2, v1}, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 61
    const-string v0, "attr_type"

    iget-object v2, p0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    iget-object v2, v2, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    invoke-static {v0, v2, v1}, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    const-string v2, "instant"

    .line 1104
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1105
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1106
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1107
    if-eqz v3, :cond_0

    .line 1108
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    const-string v2, "click_server_ts"

    invoke-static {v2, v0, v1}, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->valueOf(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 65
    const-string v2, "install_begin_server_ts"

    invoke-static {v2, v0, v1}, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->valueOf(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 66
    const-string v2, "install_version"

    invoke-static {v2, v0, v1}, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 67
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    iget-object v2, v2, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    const-string v3, "custom"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/appsflyer/internal/ContentFetcher;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/ContentFetcher;->authority:Ljava/lang/String;

    const/16 v2, 0x80

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    iget-object v1, v1, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    const-string v2, "api_ver"

    iget-object v3, p0, Lcom/appsflyer/internal/ContentFetcher;->context:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/appsflyer/AndroidUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    iget-object v1, v1, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    const-string v2, "api_ver_name"

    iget-object v3, p0, Lcom/appsflyer/internal/ContentFetcher;->context:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/appsflyer/AndroidUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    invoke-virtual {v0}, Lcom/appsflyer/internal/referrer/Referrer;->finish()V

    .line 82
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    iget-object v0, v0, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    return-object v0

    .line 68
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    iget-object v0, v0, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    const-string v2, "response"

    const-string v3, "FEATURE_NOT_SUPPORTED"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    iget-object v2, v2, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    const-string v3, "response"

    const-string v4, "FEATURE_NOT_SUPPORTED"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->onError(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 69
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    iget-object v0, v0, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    const-string v2, "response"

    const-string v3, "SERVICE_UNAVAILABLE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_5
    throw v0

    .line 74
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3

    .line 70
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method varargs constructor <init>(Lcom/appsflyer/internal/referrer/SamsungReferrer;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->values:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    invoke-direct {p0, p2, p3, p4}, Lcom/appsflyer/internal/ContentFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static valueOf(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 87
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 89
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 90
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static values(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 95
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final synthetic query()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;->$$b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

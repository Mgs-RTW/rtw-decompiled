.class final Lcom/appsflyer/AppsFlyerLibCore$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLibCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field private final $$a:Landroid/app/Application;

.field private synthetic values:Lcom/appsflyer/AppsFlyerLibCore;


# direct methods
.method public constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 3495
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3496
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->$$a:Landroid/app/Application;

    .line 3497
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 3500
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->AFDeepLinkManager(Lcom/appsflyer/AppsFlyerLibCore;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3538
    :goto_0
    return-void

    .line 3503
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/appsflyer/AppsFlyerLibCore;->AFDateFormat:J

    .line 3504
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->values:Lcom/appsflyer/AppsFlyerLibCore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLibCore;->$$b(Lcom/appsflyer/AppsFlyerLibCore;Z)Z

    .line 3506
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->values:Lcom/appsflyer/AppsFlyerLibCore;

    const-string v1, "AppsFlyerKey"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLibCore;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3507
    invoke-static {}, Lcom/appsflyer/internal/x;->values()Lcom/appsflyer/internal/x;

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->$$a:Landroid/app/Application;

    invoke-static {v0}, Lcom/appsflyer/internal/x;->$$b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/a$a$a;

    .line 3509
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resending request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4073
    iget-object v4, v0, Lcom/appsflyer/internal/a$a$a;->values:Ljava/lang/String;

    .line 3509
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3514
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 4081
    iget-object v3, v0, Lcom/appsflyer/internal/a$a$a;->AFDateFormat:Ljava/lang/String;

    .line 3516
    const/16 v6, 0xa

    invoke-static {v3, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    .line 3517
    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->values:Lcom/appsflyer/AppsFlyerLibCore;

    new-instance v8, Lcom/appsflyer/internal/model/event/CachedEvent;

    invoke-direct {v8}, Lcom/appsflyer/internal/model/event/CachedEvent;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 5073
    iget-object v10, v0, Lcom/appsflyer/internal/a$a$a;->values:Ljava/lang/String;

    .line 3518
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&isCachedRequest=true&timeincache="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/appsflyer/AFEvent;->urlString(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    move-result-object v4

    .line 3521
    invoke-virtual {v0}, Lcom/appsflyer/internal/a$a$a;->$$a()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/appsflyer/AFEvent;->post([B)Lcom/appsflyer/AFEvent;

    move-result-object v4

    .line 3522
    invoke-virtual {v4, v1}, Lcom/appsflyer/AFEvent;->key(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    move-result-object v4

    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->$$a:Landroid/app/Application;

    .line 3523
    invoke-virtual {v4, v5}, Lcom/appsflyer/AFEvent;->context(Landroid/content/Context;)Lcom/appsflyer/AFEvent;

    move-result-object v4

    .line 5081
    iget-object v0, v0, Lcom/appsflyer/internal/a$a$a;->AFDateFormat:Ljava/lang/String;

    .line 5172
    iput-object v0, v4, Lcom/appsflyer/AFEvent;->$$a:Ljava/lang/String;

    .line 6136
    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/appsflyer/AFEvent;->dateFormatUTC:Z

    .line 3517
    invoke-static {v3, v4}, Lcom/appsflyer/AppsFlyerLibCore;->values(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3527
    :catch_0
    move-exception v0

    .line 3528
    :try_start_2
    const-string v3, "Failed to resend cached request"

    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3531
    :catch_1
    move-exception v0

    .line 3532
    :try_start_3
    const-string v1, "failed to check cache. "

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3534
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v0, v11}, Lcom/appsflyer/AppsFlyerLibCore;->$$b(Lcom/appsflyer/AppsFlyerLibCore;Z)Z

    .line 3536
    :goto_2
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 3537
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->getRequestListener(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/concurrent/ScheduledExecutorService;

    goto/16 :goto_0

    .line 3534
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v0, v11}, Lcom/appsflyer/AppsFlyerLibCore;->$$b(Lcom/appsflyer/AppsFlyerLibCore;Z)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1, v11}, Lcom/appsflyer/AppsFlyerLibCore;->$$b(Lcom/appsflyer/AppsFlyerLibCore;Z)Z

    .line 3535
    throw v0
.end method

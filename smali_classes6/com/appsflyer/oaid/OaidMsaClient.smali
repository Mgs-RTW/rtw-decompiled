.class Lcom/appsflyer/oaid/OaidMsaClient;
.super Ljava/lang/Object;
.source "OaidMsaClient.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fetchMsa(Landroid/content/Context;Ljava/util/logging/Logger;JLjava/util/concurrent/TimeUnit;)Lcom/appsflyer/oaid/OaidClient$Info;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 21
    :try_start_0
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 22
    .local v2, "oaidHolder":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    new-instance v7, Lcom/appsflyer/oaid/OaidMsaClient$1;

    invoke-direct {v7, v2, p1}, Lcom/appsflyer/oaid/OaidMsaClient$1;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/logging/Logger;)V

    invoke-static {p0, v6, v7}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/miitmdid/interfaces/IIdentifierListener;)I

    move-result v3

    .line 32
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 34
    packed-switch v3, :pswitch_data_0

    .line 54
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "error":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 58
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, p2, p3, p4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, "oaid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 62
    .end local v1    # "oaid":Ljava/lang/String;
    .end local v2    # "oaidHolder":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/String;>;"
    .end local v3    # "result":I
    :goto_2
    return-object v5

    .line 22
    .restart local v2    # "oaidHolder":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/String;>;"
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 36
    .restart local v3    # "result":I
    :pswitch_0
    const-string v0, "Unsupported device"

    .line 37
    .restart local v0    # "error":Ljava/lang/String;
    goto :goto_1

    .line 39
    .end local v0    # "error":Ljava/lang/String;
    :pswitch_1
    const-string v0, "Error loading configuration file"

    .line 40
    .restart local v0    # "error":Ljava/lang/String;
    goto :goto_1

    .line 42
    .end local v0    # "error":Ljava/lang/String;
    :pswitch_2
    const-string v0, "Unsupported manufacturer"

    .line 43
    .restart local v0    # "error":Ljava/lang/String;
    goto :goto_1

    .line 45
    .end local v0    # "error":Ljava/lang/String;
    :pswitch_3
    const-string v0, "Callback will be executed in a different thread"

    .line 46
    .restart local v0    # "error":Ljava/lang/String;
    goto :goto_1

    .line 48
    .end local v0    # "error":Ljava/lang/String;
    :pswitch_4
    const-string v0, "Reflection call error"

    .line 49
    .restart local v0    # "error":Ljava/lang/String;
    goto :goto_1

    .line 51
    .end local v0    # "error":Ljava/lang/String;
    :pswitch_5
    const-string v0, "Init error begin"

    .line 52
    .restart local v0    # "error":Ljava/lang/String;
    goto :goto_1

    .line 59
    .end local v0    # "error":Ljava/lang/String;
    .restart local v1    # "oaid":Ljava/lang/String;
    :cond_2
    new-instance v6, Lcom/appsflyer/oaid/OaidClient$Info;

    invoke-direct {v6, v1}, Lcom/appsflyer/oaid/OaidClient$Info;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_2

    .line 60
    .end local v1    # "oaid":Ljava/lang/String;
    .end local v2    # "oaidHolder":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/String;>;"
    .end local v3    # "result":I
    :catch_0
    move-exception v4

    .line 61
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0xf63e2
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

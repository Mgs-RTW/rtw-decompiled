.class Lcom/appsflyer/oaid/OaidMsaClient$1;
.super Ljava/lang/Object;
.source "OaidMsaClient.java"

# interfaces
.implements Lcom/bun/miitmdid/interfaces/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/oaid/OaidMsaClient;->fetchMsa(Landroid/content/Context;Ljava/util/logging/Logger;JLjava/util/concurrent/TimeUnit;)Lcom/appsflyer/oaid/OaidClient$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$logger:Ljava/util/logging/Logger;

.field final synthetic val$oaidHolder:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/logging/Logger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    iput-object p1, p0, Lcom/appsflyer/oaid/OaidMsaClient$1;->val$oaidHolder:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/appsflyer/oaid/OaidMsaClient$1;->val$logger:Ljava/util/logging/Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSupport(ZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 3
    .param p1, "support"    # Z
    .param p2, "supplier"    # Lcom/bun/miitmdid/interfaces/IdSupplier;

    .prologue
    .line 26
    :try_start_0
    iget-object v2, p0, Lcom/appsflyer/oaid/OaidMsaClient$1;->val$oaidHolder:Ljava/util/concurrent/BlockingQueue;

    if-nez p2, :cond_0

    const-string v1, ""

    :goto_0
    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 30
    :goto_1
    return-void

    .line 26
    :cond_0
    invoke-interface {p2}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getOAID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/appsflyer/oaid/OaidMsaClient$1;->val$logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

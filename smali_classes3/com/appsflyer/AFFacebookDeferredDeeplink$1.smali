.class final Lcom/appsflyer/AFFacebookDeferredDeeplink$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AFFacebookDeferredDeeplink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic AFDateFormat:Ljava/lang/Class;

.field private synthetic values:Lcom/appsflyer/AFFacebookDeferredDeeplink$AppLinkFetchEvents;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/appsflyer/AFFacebookDeferredDeeplink$AppLinkFetchEvents;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/appsflyer/AFFacebookDeferredDeeplink$1;->AFDateFormat:Ljava/lang/Class;

    iput-object p2, p0, Lcom/appsflyer/AFFacebookDeferredDeeplink$1;->values:Lcom/appsflyer/AFFacebookDeferredDeeplink$AppLinkFetchEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onDeferredAppLinkDataFetched"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    aget-object v0, p3, v5

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/appsflyer/AFFacebookDeferredDeeplink$1;->AFDateFormat:Ljava/lang/Class;

    aget-object v2, p3, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/appsflyer/AFFacebookDeferredDeeplink$1;->AFDateFormat:Ljava/lang/Class;

    const-string v3, "getArgumentBundle"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 56
    const-class v3, Landroid/os/Bundle;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 58
    if-eqz v0, :cond_4

    .line 59
    const-string v2, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    const-string v2, "target_url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    const-string v4, "extras"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    const-string v4, "deeplink_context"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    const-string v4, "promo_code"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    iget-object v4, p0, Lcom/appsflyer/AFFacebookDeferredDeeplink$1;->values:Lcom/appsflyer/AFFacebookDeferredDeeplink$AppLinkFetchEvents;

    if-eqz v4, :cond_0

    .line 71
    iget-object v4, p0, Lcom/appsflyer/AFFacebookDeferredDeeplink$1;->values:Lcom/appsflyer/AFFacebookDeferredDeeplink$AppLinkFetchEvents;

    invoke-interface {v4, v3, v2, v0}, Lcom/appsflyer/AFFacebookDeferredDeeplink$AppLinkFetchEvents;->onAppLinkFetchFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    :goto_1
    return-object v1

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/AFFacebookDeferredDeeplink$1;->values:Lcom/appsflyer/AFFacebookDeferredDeeplink$AppLinkFetchEvents;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/appsflyer/AFFacebookDeferredDeeplink$1;->values:Lcom/appsflyer/AFFacebookDeferredDeeplink$AppLinkFetchEvents;

    invoke-interface {v0, v1, v1, v1}, Lcom/appsflyer/AFFacebookDeferredDeeplink$AppLinkFetchEvents;->onAppLinkFetchFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/appsflyer/AFFacebookDeferredDeeplink$1;->values:Lcom/appsflyer/AFFacebookDeferredDeeplink$AppLinkFetchEvents;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/appsflyer/AFFacebookDeferredDeeplink$1;->values:Lcom/appsflyer/AFFacebookDeferredDeeplink$AppLinkFetchEvents;

    const-string v2, "onDeferredAppLinkDataFetched invocation failed"

    invoke-interface {v0, v2}, Lcom/appsflyer/AFFacebookDeferredDeeplink$AppLinkFetchEvents;->onAppLinkFetchFailed(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto :goto_0
.end method

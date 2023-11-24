.class final Lcom/appsflyer/AppsFlyerLibCore$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/v$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLibCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic $$a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 2283
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$8;->$$a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final $$b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2292
    invoke-static {p1}, Lcom/appsflyer/deeplink/DeepLinkCallbacks;->onDeepLinkingError(Ljava/lang/String;)V

    .line 2293
    return-void
.end method

.method public final valueOf(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2286
    .line 3296
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3297
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$8;->$$a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2287
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$8;->$$a:Ljava/util/Map;

    invoke-static {v0}, Lcom/appsflyer/deeplink/DeepLinkCallbacks;->onDeepLinkingSuccess(Ljava/util/Map;)V

    .line 2288
    return-void
.end method

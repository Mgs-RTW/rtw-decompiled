.class public abstract Lcom/appsflyer/AFEvent;
.super Ljava/lang/Object;
.source ""


# instance fields
.field $$a:Ljava/lang/String;

.field $$b:Ljava/util/Map;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field AFDateFormat:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public AFDeepLinkManager:I

.field private AFEvent:[B

.field collectIntentsFromActivities:Ljava/lang/String;

.field dateFormatUTC:Z

.field private final getDataFormatter:Z

.field private getInstance:Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private requestListener:Landroid/app/Application;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private urlString:Ljava/lang/String;

.field valueOf:Ljava/lang/String;

.field values:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/appsflyer/AFEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    .line 46
    iput-object p1, p0, Lcom/appsflyer/AFEvent;->values:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/appsflyer/AFEvent;->collectIntentsFromActivities:Ljava/lang/String;

    .line 48
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/appsflyer/AFEvent;->getDataFormatter:Z

    .line 49
    invoke-virtual {p0, p4}, Lcom/appsflyer/AFEvent;->context(Landroid/content/Context;)Lcom/appsflyer/AFEvent;

    .line 50
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final AFDateFormat()[B
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->AFEvent:[B

    return-object v0
.end method

.method protected addChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 186
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appsflyer/AFEvent;->context()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLibCore;->getConfiguredChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "channel"

    .line 190
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected addParams(Ljava/util/Map;)Lcom/appsflyer/AFEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/appsflyer/AFEvent;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 146
    return-object p0
.end method

.method public context()Landroid/app/Application;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->requestListener:Landroid/app/Application;

    return-object v0
.end method

.method protected context(Landroid/content/Context;)Lcom/appsflyer/AFEvent;
    .locals 1

    .prologue
    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/appsflyer/AFEvent;->requestListener:Landroid/app/Application;

    .line 54
    :cond_0
    return-object p0
.end method

.method public getRequestListener()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->getInstance:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    return-object v0
.end method

.method public isEncrypt()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/appsflyer/AFEvent;->getDataFormatter:Z

    return v0
.end method

.method protected key(Ljava/lang/String;)Lcom/appsflyer/AFEvent;
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/appsflyer/AFEvent;->urlString:Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method public params()Ljava/util/Map;
    .locals 1
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
    .line 150
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    return-object v0
.end method

.method public post([B)Lcom/appsflyer/AFEvent;
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/appsflyer/AFEvent;->AFEvent:[B

    .line 164
    return-object p0
.end method

.method public requestListener(Lcom/appsflyer/attribution/AppsFlyerRequestListener;)Lcom/appsflyer/AFEvent;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/appsflyer/AFEvent;->getInstance:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 90
    return-object p0
.end method

.method public urlString(Ljava/lang/String;)Lcom/appsflyer/AFEvent;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/appsflyer/AFEvent;->collectIntentsFromActivities:Ljava/lang/String;

    .line 77
    return-object p0
.end method

.method protected urlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/appsflyer/AFEvent;->collectIntentsFromActivities:Ljava/lang/String;

    return-object v0
.end method

.method final values()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/appsflyer/AFEvent;->dateFormatUTC:Z

    return v0
.end method

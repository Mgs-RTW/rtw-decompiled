.class public abstract Lcom/appsflyer/internal/model/event/BackgroundEvent;
.super Lcom/appsflyer/AFEvent;
.source ""


# instance fields
.field private getDataFormatter:Z

.field private final getInstance:Z

.field private final requestListener:Z


# direct methods
.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 15
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/internal/model/event/BackgroundEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 2
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
    .param p4    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 24
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p6}, Lcom/appsflyer/AFEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 25
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/appsflyer/internal/model/event/BackgroundEvent;->getInstance:Z

    .line 26
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    iput-boolean v1, p0, Lcom/appsflyer/internal/model/event/BackgroundEvent;->requestListener:Z

    .line 27
    return-void

    .line 24
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 25
    goto :goto_1
.end method


# virtual methods
.method public body()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->params()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFHelper;->toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public proxyMode()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/appsflyer/internal/model/event/BackgroundEvent;->requestListener:Z

    return v0
.end method

.method public readResponse()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/appsflyer/internal/model/event/BackgroundEvent;->getInstance:Z

    return v0
.end method

.method public trackingStopped(Z)Lcom/appsflyer/internal/model/event/BackgroundEvent;
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/appsflyer/internal/model/event/BackgroundEvent;->getDataFormatter:Z

    .line 31
    return-object p0
.end method

.method public trackingStopped()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/appsflyer/internal/model/event/BackgroundEvent;->getDataFormatter:Z

    return v0
.end method

.class public Lcom/appsflyer/internal/model/event/Validate;
.super Lcom/appsflyer/internal/model/event/Purchase;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 11
    const-string v0, "af_purchase"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/internal/model/event/Purchase;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public urlString(Ljava/lang/String;)Lcom/appsflyer/AFEvent;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/model/event/Validate;->addChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/appsflyer/internal/model/event/Purchase;->urlString(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    move-result-object v0

    return-object v0
.end method

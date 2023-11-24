.class public abstract Lcom/netease/ntunisdk/external/protocol/view/DefaultWebViewCallback;
.super Ljava/lang/Object;
.source "DefaultWebViewCallback.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;
.implements Lcom/netease/ntunisdk/external/protocol/view/EventCallback;


# instance fields
.field private mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/external/protocol/view/EventCallback;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/DefaultWebViewCallback;->mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    return-void
.end method


# virtual methods
.method public back(Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/DefaultWebViewCallback;->mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/external/protocol/view/EventCallback;->back(Ljava/lang/String;)V

    return-void
.end method

.method public callback(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsMethod:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", json:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;)V

    const-string v0, "openBrowser"

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "webURL"

    if-eqz v0, :cond_0

    if-eqz p1, :cond_4

    .line 27
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 29
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/view/DefaultWebViewCallback;->openBrowser(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "baseprotocolConfirm"

    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/view/DefaultWebViewCallback;->finish(I)V

    goto :goto_0

    :cond_1
    const-string v0, "baseprotocolRefuse"

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 35
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/view/DefaultWebViewCallback;->finish(I)V

    goto :goto_0

    :cond_2
    const-string v0, "baseprotocolBack"

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, ""

    .line 37
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/view/DefaultWebViewCallback;->back(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "onPageError"

    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 40
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 42
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/view/DefaultWebViewCallback;->onPageError(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public finish(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/DefaultWebViewCallback;->mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/external/protocol/view/EventCallback;->finish(I)V

    return-void
.end method

.method public next(Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;I)V
    .locals 0

    return-void
.end method

.method public abstract onPageError(Ljava/lang/String;)V
.end method

.method public openBrowser(Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/DefaultWebViewCallback;->mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/external/protocol/view/EventCallback;->openBrowser(Ljava/lang/String;)V

    return-void
.end method

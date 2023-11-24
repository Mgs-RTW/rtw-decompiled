.class Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;
.super Ljava/lang/Object;
.source "WebViewBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewBridge"


# instance fields
.field private mConcreteCallback:Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;

.field private mDefaultCallback:Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$1;-><init>(Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;->mDefaultCallback:Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;)Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;->mConcreteCallback:Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;

    return-object p0
.end method


# virtual methods
.method public addWebViewCallback(Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;->mConcreteCallback:Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;

    return-void
.end method

.method public getDefaultCallback()Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;->mDefaultCallback:Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;

    return-object v0
.end method

.method public init(Landroid/webkit/WebView;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "AndroidJSBridge"

    .line 26
    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$CallbackInterface"

    .line 27
    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public nativeCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$CallbackInterface.nativeCall, action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", data:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebViewBridge"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public postMsgToNative(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postMsgToNative, json="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewBridge"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 46
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "reqData"

    .line 47
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "identifier"

    .line 48
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;->mDefaultCallback:Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;

    invoke-interface {v0, v1, p1}, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;->callback(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

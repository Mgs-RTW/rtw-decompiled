.class Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;
.super Landroid/webkit/WebViewClient;
.source "UniWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 222
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$100(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Protocol UniWebView"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$000(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$000(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 227
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    new-instance p2, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1$1;

    invoke-direct {p2, p0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1$1;-><init>(Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 240
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$300(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Lcom/netease/ntunisdk/external/protocol/view/UniWebView$OnShowListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 242
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$300(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Lcom/netease/ntunisdk/external/protocol/view/UniWebView$OnShowListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$OnShowListener;->onShow()V

    .line 245
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$400()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$500(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "ProtocolJSBridge.js"

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$600(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$400()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    const-string v1, "load js"

    if-ge p2, v0, :cond_3

    .line 248
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1$2;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1$2;-><init>(Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;)V

    invoke-virtual {p2, p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 263
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPageStarted:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Protocol UniWebView"

    invoke-static {p3, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$100(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)V

    .line 269
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->loadingAlarm(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 276
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedError# errorCode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",description:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",failingUrl:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Protocol UniWebView"

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ".ico"

    .line 278
    invoke-virtual {p4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "css"

    invoke-virtual {p4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "png"

    invoke-virtual {p4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "jpg"

    invoke-virtual {p4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$000(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$000(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 282
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->stopLoading()V

    .line 283
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$100(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)V

    .line 284
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {p1, p4}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$002(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "webURL"

    .line 287
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    const-string p3, "onPageError"

    invoke-static {p2, p1, p3}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$700(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 290
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    .line 296
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    const-string p1, ""

    if-eqz p2, :cond_0

    .line 297
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, ".ico"

    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "css"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 301
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$000(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$000(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 302
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->stopLoading()V

    .line 303
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$100(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)V

    .line 304
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "Protocol UniWebView"

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError2# errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ",failingUrl:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "webURL"

    .line 306
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    const-string p3, "onPageError"

    invoke-static {p2, p1, p3}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$700(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 309
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    const/16 p1, 0x194

    if-eqz p3, :cond_0

    .line 335
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p3

    goto :goto_0

    :cond_0
    const/16 p3, 0x194

    :goto_0
    const-string v0, ""

    if-eqz p2, :cond_1

    .line 336
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string p2, ".ico"

    .line 337
    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "css"

    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "png"

    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "jpg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    if-eq p1, p3, :cond_3

    const/16 p1, 0x1f4

    if-ne p1, p3, :cond_5

    .line 341
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$000(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$000(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 342
    :cond_4
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->stopLoading()V

    .line 343
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$100(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)V

    .line 344
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "Protocol UniWebView"

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedHttpError code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",failingUrl:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "webURL"

    .line 346
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    const-string p3, "onPageError"

    invoke-static {p2, p1, p3}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$700(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 349
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 315
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 316
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 317
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedSslError,description:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",failingUrl:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Protocol UniWebView"

    invoke-static {p3, p2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :try_start_0
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {p2}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$000(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {p2}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$000(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->stopLoading()V

    .line 321
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {p2}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$100(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)V

    .line 322
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "webURL"

    .line 323
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    const-string p3, "onPageError"

    invoke-static {p1, p2, p3}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$700(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 326
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 6

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldInterceptRequest url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Protocol UniWebView"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$002(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://"

    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "nativerequest/"

    if-eqz v2, :cond_0

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v0, "https://"

    .line 175
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    :cond_1
    :goto_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebResourceResponse url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeUrl url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 186
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "method"

    .line 187
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "url"

    .line 188
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mimeType"

    .line 189
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data"

    .line 190
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 192
    iget-object v5, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-virtual {v5, v3, v0, v2}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->httpGet(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 194
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 195
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const-string v3, "utf-8"

    invoke-direct {v2, v4, v3, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 196
    invoke-virtual {v2}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_2
    const-string v3, "Access-Control-Allow-Origin"

    const-string v4, "*"

    .line 200
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v2, v0}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldInterceptRequest exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

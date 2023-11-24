.class Lcom/netease/lotr/NeoXWebView$NeoXWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "NeoXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lotr/NeoXWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NeoXWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/NeoXWebView;


# direct methods
.method constructor <init>(Lcom/netease/lotr/NeoXWebView;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/netease/lotr/NeoXWebView$NeoXWebViewClient;->this$0:Lcom/netease/lotr/NeoXWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 167
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/netease/lotr/NeoXWebView$NeoXWebViewClient;->this$0:Lcom/netease/lotr/NeoXWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/lotr/NeoXWebView;->setTitle(Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/netease/lotr/NeoXWebView$NeoXWebViewClient;->this$0:Lcom/netease/lotr/NeoXWebView;

    invoke-static {p1}, Lcom/netease/lotr/NeoXWebView;->access$000(Lcom/netease/lotr/NeoXWebView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/netease/lotr/NeoXWebView$NeoXWebViewClient;->this$0:Lcom/netease/lotr/NeoXWebView;

    invoke-static {p1}, Lcom/netease/lotr/NeoXWebView;->access$100(Lcom/netease/lotr/NeoXWebView;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 172
    iget-object p1, p0, Lcom/netease/lotr/NeoXWebView$NeoXWebViewClient;->this$0:Lcom/netease/lotr/NeoXWebView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/netease/lotr/NeoXWebView;->access$002(Lcom/netease/lotr/NeoXWebView;Z)Z

    :cond_0
    return-void
.end method

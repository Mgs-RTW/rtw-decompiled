.class Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1$1;
.super Ljava/lang/Object;
.source "UniWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1$1;->this$1:Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1$1;->this$1:Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1$1;->this$1:Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->goBack()V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1$1;->this$1:Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->clearHistory()V

    .line 234
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1$1;->this$1:Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1$1;->this$1:Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;

    iget-object v1, v1, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {v1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$200(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

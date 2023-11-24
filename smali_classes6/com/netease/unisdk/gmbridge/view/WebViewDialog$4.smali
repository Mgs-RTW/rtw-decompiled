.class Lcom/netease/unisdk/gmbridge/view/WebViewDialog$4;
.super Ljava/lang/Object;
.source "WebViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->initDialogView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$4;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "gm_bridge WebViewDialog"

    const-string v0, "click forward"

    .line 114
    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$4;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$000(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$4;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$000(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$4;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$000(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    :cond_0
    return-void
.end method

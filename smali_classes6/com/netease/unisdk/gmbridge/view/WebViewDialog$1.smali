.class Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;
.super Ljava/lang/Object;
.source "WebViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/view/WebViewDialog;-><init>(Landroid/app/Activity;)V
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

    .line 68
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_2

    .line 71
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 72
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$000(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->destroy()V

    .line 74
    sput-object p2, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$000(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$000(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 78
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$000(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->destroy()V

    .line 81
    sput-object p2, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

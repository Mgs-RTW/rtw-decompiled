.class Lcom/netease/unisdk/gmbridge/view/WebViewDialog$7;
.super Landroid/webkit/WebChromeClient;
.source "WebViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->initWebView()V
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

    .line 164
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$7;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 167
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    const-string p1, "gm_bridge WebViewDialog"

    const-string p2, " onShowCustomView"

    .line 168
    invoke-static {p1, p2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

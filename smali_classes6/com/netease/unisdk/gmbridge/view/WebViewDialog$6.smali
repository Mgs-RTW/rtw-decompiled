.class Lcom/netease/unisdk/gmbridge/view/WebViewDialog$6;
.super Landroid/webkit/WebViewClient;
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

    .line 156
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$6;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string p1, "gm_bridge WebViewDialog"

    const-string v0, "shouldOverrideUrlLoading url >> %s"

    const/4 v1, 0x1

    .line 159
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$6;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {p1, p2}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$100(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

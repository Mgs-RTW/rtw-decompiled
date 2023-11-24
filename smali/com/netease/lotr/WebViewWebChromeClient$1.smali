.class Lcom/netease/lotr/WebViewWebChromeClient$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/WebViewWebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/WebViewWebChromeClient;


# direct methods
.method constructor <init>(Lcom/netease/lotr/WebViewWebChromeClient;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/netease/lotr/WebViewWebChromeClient$1;->this$0:Lcom/netease/lotr/WebViewWebChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 552
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.class final Lcom/netease/ntunisdk/base/WebViewProxy$1;
.super Landroid/os/Handler;
.source "WebViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/WebViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/WebViewProxy;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$1;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 97
    :cond_0
    :try_start_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 99
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy$1;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/WebViewProxy;->a(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy$1;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/WebViewProxy;->b(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy$1;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy$1;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/WebViewProxy;->a(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy$1;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/WebViewProxy;->d(Lcom/netease/ntunisdk/base/WebViewProxy;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 100
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebViewProxy [Handler] [MSG_PAGE_TIMEOUT] timeout, show close button"

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$1;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->b(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$1;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$1;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$1;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 109
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebViewProxy [Handler] [MSG_PAGE_TIMEOUT] Exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$1;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$1;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 112
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$1;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

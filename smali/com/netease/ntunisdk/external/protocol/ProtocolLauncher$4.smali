.class Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;
.super Ljava/lang/Object;
.source "ProtocolLauncher.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/view/EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->initWebView(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public back(Ljava/lang/String;)V
    .locals 1

    .line 225
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$1;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;)V

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finish(I)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$2;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$2;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;)V

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$800(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$800(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$3;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$3;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$4;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$4;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;I)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public next(Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;I)V
    .locals 0

    return-void
.end method

.method public openBrowser(Ljava/lang/String;)V
    .locals 2

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 216
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.android.browser.application_id"

    .line 217
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

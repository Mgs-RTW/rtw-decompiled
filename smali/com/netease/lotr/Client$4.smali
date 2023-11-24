.class Lcom/netease/lotr/Client$4;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Client;->openWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/Client;

.field final synthetic val$str_url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Client;Ljava/lang/String;)V
    .locals 0

    .line 1477
    iput-object p1, p0, Lcom/netease/lotr/Client$4;->this$0:Lcom/netease/lotr/Client;

    iput-object p2, p0, Lcom/netease/lotr/Client$4;->val$str_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1479
    iget-object v0, p0, Lcom/netease/lotr/Client$4;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v0}, Lcom/netease/lotr/Client;->access$600(Lcom/netease/lotr/Client;)Lcom/netease/lotr/NeoXWebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/netease/lotr/Client$4;->this$0:Lcom/netease/lotr/Client;

    new-instance v1, Lcom/netease/lotr/NeoXWebView;

    iget-object v2, p0, Lcom/netease/lotr/Client$4;->this$0:Lcom/netease/lotr/Client;

    invoke-direct {v1, v2}, Lcom/netease/lotr/NeoXWebView;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/netease/lotr/Client;->access$602(Lcom/netease/lotr/Client;Lcom/netease/lotr/NeoXWebView;)Lcom/netease/lotr/NeoXWebView;

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/netease/lotr/Client$4;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v0}, Lcom/netease/lotr/Client;->access$600(Lcom/netease/lotr/Client;)Lcom/netease/lotr/NeoXWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lotr/NeoXWebView;->show()V

    .line 1482
    iget-object v0, p0, Lcom/netease/lotr/Client$4;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v0}, Lcom/netease/lotr/Client;->access$600(Lcom/netease/lotr/Client;)Lcom/netease/lotr/NeoXWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/lotr/Client$4;->val$str_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/lotr/NeoXWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.class Lcom/netease/lotr/Client$5;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Client;->removeWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/Client;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Client;)V
    .locals 0

    .line 1491
    iput-object p1, p0, Lcom/netease/lotr/Client$5;->this$0:Lcom/netease/lotr/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1493
    iget-object v0, p0, Lcom/netease/lotr/Client$5;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v0}, Lcom/netease/lotr/Client;->access$600(Lcom/netease/lotr/Client;)Lcom/netease/lotr/NeoXWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lotr/NeoXWebView;->hide()V

    return-void
.end method

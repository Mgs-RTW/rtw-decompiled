.class Lcom/netease/lotr/Client$26;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Client;->showModalDialog(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/Client;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Client;Landroid/os/Handler;)V
    .locals 0

    .line 2982
    iput-object p1, p0, Lcom/netease/lotr/Client$26;->this$0:Lcom/netease/lotr/Client;

    iput-object p2, p0, Lcom/netease/lotr/Client$26;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2984
    iget-object p1, p0, Lcom/netease/lotr/Client$26;->this$0:Lcom/netease/lotr/Client;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/netease/lotr/Client;->access$702(Lcom/netease/lotr/Client;I)I

    .line 2985
    iget-object p1, p0, Lcom/netease/lotr/Client$26;->val$handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/netease/lotr/Client$26;->val$handler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

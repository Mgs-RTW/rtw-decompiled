.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/ProtocolManager$OnProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocol(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/netease/ntunisdk/external/protocol/Scene;I)V
    .locals 8

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/16 v0, 0x65

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getBaseProtocol()Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$500(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;IZ)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 473
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 474
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$302(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Z)Z

    goto :goto_0

    .line 476
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;->val$activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9$2;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9$2;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;)V

    invoke-static {p1, p2, v1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$400(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 462
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;->val$activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9$1;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;)V

    invoke-static {p1, p2, v1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$400(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;ZLjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/ProtocolManager$OnProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolWhenLaunch(Landroid/app/Activity;)V
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

    .line 236
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/netease/ntunisdk/external/protocol/Scene;I)V
    .locals 7

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    const/16 p1, 0x64

    const/4 v0, 0x1

    if-eq p2, p1, :cond_2

    const/16 p1, 0x65

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->val$activity:Landroid/app/Activity;

    sget-object v3, Lcom/netease/ntunisdk/external/protocol/Scene;->LAUNCHER:Lcom/netease/ntunisdk/external/protocol/Scene;

    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    .line 253
    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getBaseProtocol()Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 252
    invoke-static/range {v1 .. v6}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$500(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;IZ)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 255
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 256
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$302(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Z)Z

    goto :goto_0

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$2;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$2;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;)V

    invoke-static {p1, p2, v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$400(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$1;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;)V

    invoke-static {p1, p2, v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$400(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 241
    :cond_3
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->notShowCallback(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

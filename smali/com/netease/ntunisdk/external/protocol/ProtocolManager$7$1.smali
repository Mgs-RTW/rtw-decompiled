.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7$1;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;->onFinish(Lcom/netease/ntunisdk/external/protocol/Scene;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;

    iget-object v1, v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;

    iget-object v2, v2, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;->val$uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolIfNeed(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

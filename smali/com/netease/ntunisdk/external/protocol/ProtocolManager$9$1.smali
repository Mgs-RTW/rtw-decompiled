.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9$1;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;->onFinish(Lcom/netease/ntunisdk/external/protocol/Scene;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;

    iget-object v1, v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocol(Landroid/app/Activity;)V

    return-void
.end method

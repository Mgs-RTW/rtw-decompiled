.class Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$3;
.super Ljava/lang/Object;
.source "ProtocolLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->finish(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;I)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$3;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;

    iput p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$3;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$3;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$900(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V

    .line 254
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$3;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCallback()Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object v0

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$3;->val$code:I

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;->onFinish(I)V

    .line 255
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$3;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$400(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Z

    return-void
.end method

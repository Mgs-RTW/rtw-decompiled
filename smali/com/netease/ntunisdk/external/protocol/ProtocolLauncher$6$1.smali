.class Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6$1;
.super Ljava/lang/Object;
.source "ProtocolLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6;->onFinish(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$400(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Z

    return-void
.end method

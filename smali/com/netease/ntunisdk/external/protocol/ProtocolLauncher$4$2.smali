.class Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$2;
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


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$2;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$2;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$2;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;

    iget-object v1, v1, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$700(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;Landroid/content/Context;)V

    return-void
.end method

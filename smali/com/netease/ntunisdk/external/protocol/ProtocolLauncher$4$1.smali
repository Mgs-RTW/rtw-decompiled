.class Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$1;
.super Ljava/lang/Object;
.source "ProtocolLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->back(Ljava/lang/String;)V
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

    .line 225
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$600(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$600(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$600(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->goBack()V

    :cond_0
    return-void
.end method

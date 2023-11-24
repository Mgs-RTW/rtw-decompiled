.class Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$5;
.super Lcom/netease/ntunisdk/external/protocol/view/DefaultWebViewCallback;
.source "ProtocolLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->initWebView(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;Lcom/netease/ntunisdk/external/protocol/view/EventCallback;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$5;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/external/protocol/view/DefaultWebViewCallback;-><init>(Lcom/netease/ntunisdk/external/protocol/view/EventCallback;)V

    return-void
.end method


# virtual methods
.method public onPageError(Ljava/lang/String;)V
    .locals 2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$5;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$5$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$5$1;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.class Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6;
.super Ljava/lang/Object;
.source "ProtocolLauncher.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->showProtocolByDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 2

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish, code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "L"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->removeCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 498
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->mHasShowProtocolLauncher:Z

    .line 499
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "null != SdkMgr.getInst()"

    .line 500
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->finish()V

    return-void

    .line 504
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6$1;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6;)V

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 511
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$6;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$1200(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V

    :goto_0
    return-void
.end method

.method public onOpen()V
    .locals 2

    const-string v0, "L"

    const-string v1, "onOpen"

    .line 517
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

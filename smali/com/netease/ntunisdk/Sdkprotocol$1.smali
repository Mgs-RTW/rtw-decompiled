.class Lcom/netease/ntunisdk/Sdkprotocol$1;
.super Ljava/lang/Object;
.source "Sdkprotocol.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/Sdkprotocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/Sdkprotocol;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/Sdkprotocol;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/netease/ntunisdk/Sdkprotocol$1;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 7

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish, code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK protocol"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol$1;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    invoke-static {v0}, Lcom/netease/ntunisdk/Sdkprotocol;->access$000(Lcom/netease/ntunisdk/Sdkprotocol;)Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v0, :cond_2

    if-eq p1, v4, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, p1

    .line 52
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFinish[protocolCallbackForLogin], code = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol$1;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    invoke-static {v0}, Lcom/netease/ntunisdk/Sdkprotocol;->access$000(Lcom/netease/ntunisdk/Sdkprotocol;)Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;->onFinish(I)V

    goto/16 :goto_2

    .line 56
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol$1;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "func"

    aput-object v6, v1, v5

    const-string v5, "showCompactView"

    aput-object v5, v1, v3

    const-string v3, "step"

    aput-object v3, v1, v2

    const-string v3, "show_protocol_done"

    aput-object v3, v1, v4

    const/4 v3, 0x4

    const-string v4, "accept"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "channel_id"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/netease/ntunisdk/Sdkprotocol$1;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    iget-object v4, v4, Lcom/netease/ntunisdk/Sdkprotocol;->appChannel:Ljava/lang/String;

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "uid"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    .line 61
    iget-object v4, p0, Lcom/netease/ntunisdk/Sdkprotocol$1;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    invoke-static {v4}, Lcom/netease/ntunisdk/Sdkprotocol;->access$100(Lcom/netease/ntunisdk/Sdkprotocol;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, ""

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/netease/ntunisdk/Sdkprotocol$1;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    invoke-static {v4}, Lcom/netease/ntunisdk/Sdkprotocol;->access$100(Lcom/netease/ntunisdk/Sdkprotocol;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string v4, "jfGameId"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/netease/ntunisdk/Sdkprotocol$1;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    iget-object v4, v4, Lcom/netease/ntunisdk/Sdkprotocol;->jfGameId:Ljava/lang/String;

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string v4, "udid"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    iget-object v4, p0, Lcom/netease/ntunisdk/Sdkprotocol$1;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    iget-object v4, v4, Lcom/netease/ntunisdk/Sdkprotocol;->udid:Ljava/lang/String;

    aput-object v4, v1, v3

    const/16 v3, 0xe

    const-string v4, "protocol_id"

    aput-object v4, v1, v3

    const/16 v3, 0xf

    iget-object v4, p0, Lcom/netease/ntunisdk/Sdkprotocol$1;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    .line 64
    invoke-static {v4}, Lcom/netease/ntunisdk/Sdkprotocol;->access$200(Lcom/netease/ntunisdk/Sdkprotocol;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCurrentProtocolId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x10

    const-string v4, "protocol_version"

    aput-object v4, v1, v3

    const/16 v3, 0x11

    iget-object v4, p0, Lcom/netease/ntunisdk/Sdkprotocol$1;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    .line 65
    invoke-static {v4}, Lcom/netease/ntunisdk/Sdkprotocol;->access$200(Lcom/netease/ntunisdk/Sdkprotocol;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCurrentProtocolVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 56
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/Sdkprotocol;->access$300(Lcom/netease/ntunisdk/Sdkprotocol;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    .line 70
    :goto_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    .line 71
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->protocolFinish(I)V

    if-ne p1, v2, :cond_4

    .line 73
    iget-object p1, p0, Lcom/netease/ntunisdk/Sdkprotocol$1;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    invoke-static {p1}, Lcom/netease/ntunisdk/Sdkprotocol;->access$400(Lcom/netease/ntunisdk/Sdkprotocol;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/utils/SysHelper;->killProcess(Landroid/content/Context;)V

    :cond_4
    return-void
.end method

.method public onOpen()V
    .locals 3

    const-string v0, "UniSDK protocol"

    const-string v1, "onOpen"

    .line 79
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol$1;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    invoke-static {v0}, Lcom/netease/ntunisdk/Sdkprotocol;->access$000(Lcom/netease/ntunisdk/Sdkprotocol;)Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol$1;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    invoke-static {v0}, Lcom/netease/ntunisdk/Sdkprotocol;->access$000(Lcom/netease/ntunisdk/Sdkprotocol;)Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;->onOpen()V

    .line 84
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "USER_COMPACT_OPEN"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

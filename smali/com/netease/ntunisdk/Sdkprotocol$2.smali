.class Lcom/netease/ntunisdk/Sdkprotocol$2;
.super Ljava/lang/Object;
.source "Sdkprotocol.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/Sdkprotocol;->showProtocolInLogin(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/Sdkprotocol;

.field final synthetic val$jObj:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/Sdkprotocol;Lorg/json/JSONObject;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/netease/ntunisdk/Sdkprotocol$2;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    iput-object p2, p0, Lcom/netease/ntunisdk/Sdkprotocol$2;->val$jObj:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 4

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol$2;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "func"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "showProtocolInLogin"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "step"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "show_protocol_done"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "accept"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 362
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "row"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/netease/ntunisdk/Sdkprotocol$2;->val$jObj:Lorg/json/JSONObject;

    .line 363
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "uid"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 364
    iget-object v3, p0, Lcom/netease/ntunisdk/Sdkprotocol$2;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    invoke-static {v3}, Lcom/netease/ntunisdk/Sdkprotocol;->access$100(Lcom/netease/ntunisdk/Sdkprotocol;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/netease/ntunisdk/Sdkprotocol$2;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    invoke-static {v3}, Lcom/netease/ntunisdk/Sdkprotocol;->access$100(Lcom/netease/ntunisdk/Sdkprotocol;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "channel_id"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/netease/ntunisdk/Sdkprotocol$2;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    iget-object v3, v3, Lcom/netease/ntunisdk/Sdkprotocol;->appChannel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "jfGameId"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/netease/ntunisdk/Sdkprotocol$2;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    iget-object v3, v3, Lcom/netease/ntunisdk/Sdkprotocol;->jfGameId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "udid"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/netease/ntunisdk/Sdkprotocol$2;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    iget-object v3, v3, Lcom/netease/ntunisdk/Sdkprotocol;->udid:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "protocol_id"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/netease/ntunisdk/Sdkprotocol$2;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    .line 368
    invoke-static {v3}, Lcom/netease/ntunisdk/Sdkprotocol;->access$200(Lcom/netease/ntunisdk/Sdkprotocol;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCurrentProtocolId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "protocol_version"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/netease/ntunisdk/Sdkprotocol$2;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    .line 369
    invoke-static {v3}, Lcom/netease/ntunisdk/Sdkprotocol;->access$200(Lcom/netease/ntunisdk/Sdkprotocol;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCurrentProtocolVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 359
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/Sdkprotocol;->access$300(Lcom/netease/ntunisdk/Sdkprotocol;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :catchall_0
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkprotocol$2;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/Sdkprotocol;->showProtocolInLoginCallback(I)V

    return-void
.end method

.method public onOpen()V
    .locals 0

    return-void
.end method

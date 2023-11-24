.class Lcom/netease/ntunisdk/Sdkybuaxwny$1;
.super Ljava/lang/Object;
.source "Sdkybuaxwny.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/Sdkybuaxwny;->extendFunc(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/Sdkybuaxwny;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/Sdkybuaxwny;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/netease/ntunisdk/Sdkybuaxwny$1;->this$0:Lcom/netease/ntunisdk/Sdkybuaxwny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 164
    invoke-static {}, Lcom/netease/ntunisdk/Sdkybuaxwny;->access$000()Lcom/netease/ybuax/Flagclass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ybuax/Flagclass;->GetWnyklrieResult()I

    move-result v0

    .line 166
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "JF_GAMEID"

    .line 167
    invoke-static {}, Lcom/netease/ntunisdk/Sdkybuaxwny;->access$000()Lcom/netease/ybuax/Flagclass;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/ybuax/Flagclass;->jfGameId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "methodId"

    const-string v3, "GetEmulatorResult"

    .line 168
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isMumu"

    .line 169
    invoke-static {}, Lcom/netease/ntunisdk/Sdkybuaxwny;->access$100()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 170
    invoke-static {}, Lcom/netease/ntunisdk/Sdkybuaxwny;->access$100()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "EmulatorDetectResult"

    const-string v4, "result"

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 171
    :try_start_1
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    invoke-interface {v2, v3, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 175
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    invoke-interface {v2, v3, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/Sdkybuaxwny$1;->this$0:Lcom/netease/ntunisdk/Sdkybuaxwny;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/Sdkybuaxwny;->extendFuncCall(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 179
    invoke-static {}, Lcom/netease/ntunisdk/Sdkybuaxwny;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

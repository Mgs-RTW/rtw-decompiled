.class Lcom/netease/ntunisdk/Sdkybuaxwny$1ThreadWait;
.super Ljava/lang/Thread;
.source "Sdkybuaxwny.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/Sdkybuaxwny;->extendFunc(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadWait"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/Sdkybuaxwny;

.field final synthetic val$waittime:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/Sdkybuaxwny;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/netease/ntunisdk/Sdkybuaxwny$1ThreadWait;->this$0:Lcom/netease/ntunisdk/Sdkybuaxwny;

    iput p2, p0, Lcom/netease/ntunisdk/Sdkybuaxwny$1ThreadWait;->val$waittime:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 130
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "JF_GAMEID"

    .line 131
    invoke-static {}, Lcom/netease/ntunisdk/Sdkybuaxwny;->access$000()Lcom/netease/ybuax/Flagclass;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/ybuax/Flagclass;->jfGameId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "methodId"

    const-string v2, "startEmulatorDetect"

    .line 132
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isMumu"

    .line 133
    invoke-static {}, Lcom/netease/ntunisdk/Sdkybuaxwny;->access$100()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 134
    invoke-static {}, Lcom/netease/ntunisdk/Sdkybuaxwny;->access$100()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "EmulatorDetectResult"

    const-string v3, "result"

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 135
    :try_start_1
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/Sdkybuaxwny;->access$000()Lcom/netease/ybuax/Flagclass;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ybuax/Flagclass;->Detectfinish:Ljava/util/concurrent/Semaphore;

    iget v4, p0, Lcom/netease/ntunisdk/Sdkybuaxwny$1ThreadWait;->val$waittime:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    .line 139
    invoke-static {}, Lcom/netease/ntunisdk/Sdkybuaxwny;->access$000()Lcom/netease/ybuax/Flagclass;

    move-result-object v1

    iget v1, v1, Lcom/netease/ybuax/Flagclass;->WnyklrieResult:I

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-static {}, Lcom/netease/ntunisdk/Sdkybuaxwny;->access$000()Lcom/netease/ybuax/Flagclass;

    move-result-object v3

    iget v3, v3, Lcom/netease/ybuax/Flagclass;->WnyklrieResult:I

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/Sdkybuaxwny$1ThreadWait;->this$0:Lcom/netease/ntunisdk/Sdkybuaxwny;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/Sdkybuaxwny;->extendFuncCall(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 144
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

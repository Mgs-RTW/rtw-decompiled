.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;
.super Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable;
.source "ProtocolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolIfNeed(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$600(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$900(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V
    :try_end_1
    .catch Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 342
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/external/protocol/Scene;->LOGIN:Lcom/netease/ntunisdk/external/protocol/Scene;

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    .line 343
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->val$uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$1000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    sget-object v0, Lcom/netease/ntunisdk/external/protocol/Scene;->SWITCH_ACCOUNT:Lcom/netease/ntunisdk/external/protocol/Scene;

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->val$uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$1002(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->val$uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->checkNeedShowProtocolByUid(Ljava/lang/String;)I

    move-result v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptStatus\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "M"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v3, 0x3

    if-ne v0, v1, :cond_1

    const-string v0, "no need showCompactView "

    .line 351
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$1100(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    const-string v0, "channel is netease\uff0c no need showCompactView "

    .line 357
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->acceptProtocol()V

    .line 359
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 362
    :cond_2
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getBaseProtocol()Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v1

    .line 363
    iput v0, v1, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->acceptStatus:I

    const/16 v0, 0x65

    .line 364
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    .line 337
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException;->printStackTrace()V

    const/16 v0, 0x64

    .line 338
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$8;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

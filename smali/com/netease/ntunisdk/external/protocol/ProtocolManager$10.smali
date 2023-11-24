.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$10;
.super Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable;
.source "ProtocolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocol(Landroid/app/Activity;)V
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


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/app/Activity;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$10;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$10;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 441
    sget-object v0, Lcom/netease/ntunisdk/external/protocol/Scene;->REVIEW:Lcom/netease/ntunisdk/external/protocol/Scene;

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$10;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$10;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$10;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$600(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$10;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$900(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V
    :try_end_1
    .catch Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/16 v0, 0x65

    .line 455
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    .line 450
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException;->printStackTrace()V

    const/16 v0, 0x64

    .line 451
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

    .line 437
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$10;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

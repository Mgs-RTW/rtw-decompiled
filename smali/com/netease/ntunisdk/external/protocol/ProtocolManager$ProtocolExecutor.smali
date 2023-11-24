.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;
.super Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;
.source "ProtocolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProtocolExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$OnProtocolCallback;

.field private mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

.field private task:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 763
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$1;)V
    .locals 0

    .line 763
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;
    .locals 3

    const/4 p1, -0x1

    .line 786
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->task:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->task:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 788
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->task:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable;

    iget-object v1, v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    .line 789
    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    invoke-direct {v1, v2, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;-><init>(Lcom/netease/ntunisdk/external/protocol/Scene;I)V

    return-object v1

    .line 791
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    invoke-direct {v0, v1, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;-><init>(Lcom/netease/ntunisdk/external/protocol/Scene;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 794
    :catch_0
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    invoke-direct {v0, v1, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;-><init>(Lcom/netease/ntunisdk/external/protocol/Scene;I)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 763
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->doInBackground([Ljava/lang/Void;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;)V
    .locals 2

    .line 800
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->callback:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$OnProtocolCallback;

    if-eqz v0, :cond_0

    .line 801
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    iget p1, p1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;->result:I

    invoke-interface {v0, v1, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$OnProtocolCallback;->onFinish(Lcom/netease/ntunisdk/external/protocol/Scene;I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 763
    check-cast p1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->onPostExecute(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;)V

    return-void
.end method

.method public setCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$OnProtocolCallback;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->callback:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$OnProtocolCallback;

    return-object p0
.end method

.method public setScene(Lcom/netease/ntunisdk/external/protocol/Scene;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    return-object p0
.end method

.method public submitTask(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;"
        }
    .end annotation

    .line 774
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolExecutor;->task:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolCallable;

    return-object p0
.end method

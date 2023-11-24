.class Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$2;
.super Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$WorkerRunnable;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$2;->this$0:Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$WorkerRunnable;-><init>(Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$2;->this$0:Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;->access$200(Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    const/4 v2, 0x0

    .line 102
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 104
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$2;->this$0:Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;

    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 105
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$2;->this$0:Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;->access$400(Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :catchall_0
    move-exception v0

    .line 107
    :try_start_1
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$2;->this$0:Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;->access$300(Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 110
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask$2;->this$0:Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;->access$400(Lcom/netease/ntunisdk/external/protocol/utils/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    throw v0
.end method

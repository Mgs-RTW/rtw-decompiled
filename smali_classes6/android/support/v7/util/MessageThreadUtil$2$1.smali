.class Landroid/support/v7/util/MessageThreadUtil$2$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/MessageThreadUtil$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/util/MessageThreadUtil$2;


# direct methods
.method constructor <init>(Landroid/support/v7/util/MessageThreadUtil$2;)V
    .locals 0

    .line 133
    iput-object p1, p0, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 137
    :goto_0
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    invoke-static {v0}, Landroid/support/v7/util/MessageThreadUtil$2;->access$100(Landroid/support/v7/util/MessageThreadUtil$2;)Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->next()Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    iget-object v0, v0, Landroid/support/v7/util/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 141
    :cond_0
    iget v1, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message, what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThreadUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$2;->val$callback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    iget-object v0, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v0, Landroid/support/v7/util/TileList$Tile;

    invoke-interface {v1, v0}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->recycleTile(Landroid/support/v7/util/TileList$Tile;)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$2;->val$callback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    iget v2, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v0, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v0}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->loadTile(II)V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    invoke-static {v1}, Landroid/support/v7/util/MessageThreadUtil$2;->access$100(Landroid/support/v7/util/MessageThreadUtil$2;)Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 148
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    invoke-static {v1}, Landroid/support/v7/util/MessageThreadUtil$2;->access$100(Landroid/support/v7/util/MessageThreadUtil$2;)Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 149
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    iget-object v2, v1, Landroid/support/v7/util/MessageThreadUtil$2;->val$callback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    iget v3, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v4, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    iget v5, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg3:I

    iget v6, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg4:I

    iget v7, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg5:I

    invoke-interface/range {v2 .. v7}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    goto :goto_0

    .line 143
    :cond_4
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    invoke-static {v1}, Landroid/support/v7/util/MessageThreadUtil$2;->access$100(Landroid/support/v7/util/MessageThreadUtil$2;)Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 144
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$2$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$2;

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$2;->val$callback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    iget v0, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    invoke-interface {v1, v0}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->refresh(I)V

    goto/16 :goto_0
.end method
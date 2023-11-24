.class Lcom/netease/androidcrashhandler/task/TaskProxy$1;
.super Ljava/lang/Object;
.source "TaskProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/task/TaskProxy;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/task/TaskProxy;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/task/TaskProxy;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/netease/androidcrashhandler/task/TaskProxy$1;->this$0:Lcom/netease/androidcrashhandler/task/TaskProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "trace"

    const-string v1, "TaskProxy [start] thread start"

    .line 66
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/netease/androidcrashhandler/task/TaskExecutor;->getInstance()Lcom/netease/androidcrashhandler/task/TaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/task/TaskExecutor;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 72
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/task/TaskProxy$1;->this$0:Lcom/netease/androidcrashhandler/task/TaskProxy;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/task/TaskProxy;->access$000(Lcom/netease/androidcrashhandler/task/TaskProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/netease/androidcrashhandler/task/TaskProxy$1;->this$0:Lcom/netease/androidcrashhandler/task/TaskProxy;

    invoke-static {v2}, Lcom/netease/androidcrashhandler/task/TaskProxy;->access$100(Lcom/netease/androidcrashhandler/task/TaskProxy;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const-string v2, "trace"

    const-string v3, "TaskProxy [start] [submit]"

    .line 73
    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/netease/androidcrashhandler/task/TaskProxy$1;->this$0:Lcom/netease/androidcrashhandler/task/TaskProxy;

    invoke-static {v2}, Lcom/netease/androidcrashhandler/task/TaskProxy;->access$200(Lcom/netease/androidcrashhandler/task/TaskProxy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "trace"

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TaskProxy [start] Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "trace"

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TaskProxy [start] InterruptedException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 86
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void
.end method

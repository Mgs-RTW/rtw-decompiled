.class Lcom/netease/androidcrashhandler/other/OtherProxy$1;
.super Ljava/lang/Object;
.source "OtherProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/other/OtherProxy;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/other/OtherProxy;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/other/OtherProxy;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/netease/androidcrashhandler/other/OtherProxy$1;->this$0:Lcom/netease/androidcrashhandler/other/OtherProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 76
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy$1;->this$0:Lcom/netease/androidcrashhandler/other/OtherProxy;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/other/OtherProxy;->access$000(Lcom/netease/androidcrashhandler/other/OtherProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy$1;->this$0:Lcom/netease/androidcrashhandler/other/OtherProxy;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/other/OtherProxy;->access$000(Lcom/netease/androidcrashhandler/other/OtherProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/androidcrashhandler/other/OtherCore;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/androidcrashhandler/other/OtherProxy$1;->this$0:Lcom/netease/androidcrashhandler/other/OtherProxy;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/other/OtherProxy;->access$100(Lcom/netease/androidcrashhandler/other/OtherProxy;)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 77
    iget-object v1, p0, Lcom/netease/androidcrashhandler/other/OtherProxy$1;->this$0:Lcom/netease/androidcrashhandler/other/OtherProxy;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/other/OtherProxy;->access$300(Lcom/netease/androidcrashhandler/other/OtherProxy;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/androidcrashhandler/other/OtherProxy$1;->this$0:Lcom/netease/androidcrashhandler/other/OtherProxy;

    invoke-static {v2}, Lcom/netease/androidcrashhandler/other/OtherProxy;->access$200(Lcom/netease/androidcrashhandler/other/OtherProxy;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "trace"

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OtherProxy [start] InterruptedException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy$1;->this$0:Lcom/netease/androidcrashhandler/other/OtherProxy;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/other/OtherProxy;->access$200(Lcom/netease/androidcrashhandler/other/OtherProxy;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy$1;->this$0:Lcom/netease/androidcrashhandler/other/OtherProxy;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/other/OtherProxy;->access$200(Lcom/netease/androidcrashhandler/other/OtherProxy;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy$1;->this$0:Lcom/netease/androidcrashhandler/other/OtherProxy;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/other/OtherProxy;->access$200(Lcom/netease/androidcrashhandler/other/OtherProxy;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 86
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy$1;->this$0:Lcom/netease/androidcrashhandler/other/OtherProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/other/OtherProxy;->access$202(Lcom/netease/androidcrashhandler/other/OtherProxy;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    :cond_1
    return-void
.end method

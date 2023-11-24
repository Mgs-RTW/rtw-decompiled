.class Lcom/netease/unisdk/netproxy/RequestTimer$1;
.super Ljava/util/TimerTask;
.source "RequestTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/netproxy/RequestTimer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/netproxy/RequestTimer;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/netproxy/RequestTimer;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/netease/unisdk/netproxy/RequestTimer$1;->this$0:Lcom/netease/unisdk/netproxy/RequestTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/netease/unisdk/netproxy/RequestTimer$1;->this$0:Lcom/netease/unisdk/netproxy/RequestTimer;

    invoke-static {v0}, Lcom/netease/unisdk/netproxy/RequestTimer;->access$000(Lcom/netease/unisdk/netproxy/RequestTimer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/netproxy/RequestTimer$1;->this$0:Lcom/netease/unisdk/netproxy/RequestTimer;

    invoke-static {v0}, Lcom/netease/unisdk/netproxy/RequestTimer;->access$100(Lcom/netease/unisdk/netproxy/RequestTimer;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 37
    iget-object v0, p0, Lcom/netease/unisdk/netproxy/RequestTimer$1;->this$0:Lcom/netease/unisdk/netproxy/RequestTimer;

    invoke-static {v0}, Lcom/netease/unisdk/netproxy/RequestTimer;->access$000(Lcom/netease/unisdk/netproxy/RequestTimer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    iget-object v0, p0, Lcom/netease/unisdk/netproxy/RequestTimer$1;->this$0:Lcom/netease/unisdk/netproxy/RequestTimer;

    invoke-static {v0}, Lcom/netease/unisdk/netproxy/RequestTimer;->access$200(Lcom/netease/unisdk/netproxy/RequestTimer;)V

    return-void
.end method

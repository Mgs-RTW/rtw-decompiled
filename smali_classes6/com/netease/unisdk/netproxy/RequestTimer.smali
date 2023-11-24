.class public Lcom/netease/unisdk/netproxy/RequestTimer;
.super Ljava/lang/Object;
.source "RequestTimer.java"


# instance fields
.field private mCallback:Lcom/netease/unisdk/netproxy/NetProxyCallback;

.field private volatile mIsTimeOut:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRpcid:Ljava/lang/String;

.field private mTime:I

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/netease/unisdk/netproxy/NetProxyCallback;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netease/unisdk/netproxy/RequestTimer;->mIsTimeOut:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netease/unisdk/netproxy/RequestTimer;->mTimer:Ljava/util/Timer;

    .line 21
    iput-object p1, p0, Lcom/netease/unisdk/netproxy/RequestTimer;->mRpcid:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/netease/unisdk/netproxy/RequestTimer;->mTime:I

    .line 23
    iput-object p3, p0, Lcom/netease/unisdk/netproxy/RequestTimer;->mCallback:Lcom/netease/unisdk/netproxy/NetProxyCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/netproxy/RequestTimer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/netease/unisdk/netproxy/RequestTimer;->mIsTimeOut:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/unisdk/netproxy/RequestTimer;)Ljava/util/Timer;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/netease/unisdk/netproxy/RequestTimer;->mTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/unisdk/netproxy/RequestTimer;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/netease/unisdk/netproxy/RequestTimer;->timeOutCallBack()V

    return-void
.end method

.method private timeOutCallBack()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/netease/unisdk/netproxy/RequestTimer;->mCallback:Lcom/netease/unisdk/netproxy/NetProxyCallback;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v2, v1, v1}, Lcom/netease/unisdk/netproxy/NetProxyCallback;->onResult(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/netease/unisdk/netproxy/NetProxyManager;->getInstance()Lcom/netease/unisdk/netproxy/NetProxyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/netproxy/RequestTimer;->mRpcid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/netproxy/NetProxyManager;->removeCallback(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/netease/unisdk/netproxy/RequestTimer;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/netease/unisdk/netproxy/RequestTimer$1;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/netproxy/RequestTimer$1;-><init>(Lcom/netease/unisdk/netproxy/RequestTimer;)V

    iget v2, p0, Lcom/netease/unisdk/netproxy/RequestTimer;->mTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/netease/unisdk/netproxy/RequestTimer;->mIsTimeOut:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    iget-object v0, p0, Lcom/netease/unisdk/netproxy/RequestTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

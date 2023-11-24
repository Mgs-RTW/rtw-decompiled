.class public Lcom/netease/androidcrashhandler/task/TaskProxy;
.super Ljava/lang/Object;
.source "TaskProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OtherInfoProxy"

.field private static mTaskProxy:Lcom/netease/androidcrashhandler/task/TaskProxy;


# instance fields
.field private mAl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStatus:I

.field private mTaskQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mTaskQueue:Ljava/util/concurrent/BlockingQueue;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mAl:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mStatus:I

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/task/TaskProxy;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mTaskQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/androidcrashhandler/task/TaskProxy;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mStatus:I

    return p0
.end method

.method static synthetic access$200(Lcom/netease/androidcrashhandler/task/TaskProxy;)Ljava/util/ArrayList;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mAl:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getInstances()Lcom/netease/androidcrashhandler/task/TaskProxy;
    .locals 1

    .line 31
    sget-object v0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mTaskProxy:Lcom/netease/androidcrashhandler/task/TaskProxy;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/netease/androidcrashhandler/task/TaskProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/task/TaskProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mTaskProxy:Lcom/netease/androidcrashhandler/task/TaskProxy;

    .line 34
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mTaskProxy:Lcom/netease/androidcrashhandler/task/TaskProxy;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mStatus:I

    return v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public put(Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "trace"

    const-string v1, "TaskProxy [put]"

    .line 38
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mTaskQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    const-string v0, "trace"

    const-string v1, "TaskProxy [put] task"

    .line 40
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mTaskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "trace"

    const-string v0, "TaskProxy [put] mTaskQueue is null"

    .line 43
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "\u6062\u590d\u9ed8\u8ba4\u72b6\u6001"

    .line 102
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mStatus:I

    return-void
.end method

.method public start()V
    .locals 3

    const-string v0, "trace"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskProxy [start] mStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget v0, p0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "trace"

    const-string v1, "TaskProxy [start] \u7ebf\u7a0b\u6c60\u6b63\u5728\u8fdb\u884c\u4e2d"

    .line 56
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_0
    iput v1, p0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mStatus:I

    .line 62
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/androidcrashhandler/task/TaskProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/task/TaskProxy$1;-><init>(Lcom/netease/androidcrashhandler/task/TaskProxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "crashhunter_otherproxy"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x5

    .line 98
    iput v0, p0, Lcom/netease/androidcrashhandler/task/TaskProxy;->mStatus:I

    return-void
.end method

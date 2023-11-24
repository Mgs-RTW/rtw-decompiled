.class public Lcom/netease/androidcrashhandler/other/OtherProxy;
.super Ljava/lang/Object;
.source "OtherProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OtherProxy"

.field private static sOtherProxy:Lcom/netease/androidcrashhandler/other/OtherProxy;


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

.field private mCallQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/netease/androidcrashhandler/other/OtherCore;",
            ">;"
        }
    .end annotation
.end field

.field private mExs:Ljava/util/concurrent/ExecutorService;

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mCallQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mStatus:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mAl:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/other/OtherProxy;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mCallQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/androidcrashhandler/other/OtherProxy;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mStatus:I

    return p0
.end method

.method static synthetic access$200(Lcom/netease/androidcrashhandler/other/OtherProxy;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/androidcrashhandler/other/OtherProxy;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netease/androidcrashhandler/other/OtherProxy;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mAl:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/other/OtherProxy;
    .locals 1

    .line 35
    sget-object v0, Lcom/netease/androidcrashhandler/other/OtherProxy;->sOtherProxy:Lcom/netease/androidcrashhandler/other/OtherProxy;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/netease/androidcrashhandler/other/OtherProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/other/OtherProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/other/OtherProxy;->sOtherProxy:Lcom/netease/androidcrashhandler/other/OtherProxy;

    .line 39
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/other/OtherProxy;->sOtherProxy:Lcom/netease/androidcrashhandler/other/OtherProxy;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mStatus:I

    return v0
.end method

.method public put(Lcom/netease/androidcrashhandler/other/OtherCore;)V
    .locals 2

    const-string v0, "trace"

    const-string v1, "OtherProxy [put]"

    .line 43
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mCallQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    const-string v0, "trace"

    const-string v1, "OtherProxy [put] call"

    .line 45
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mCallQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "trace"

    const-string v0, "OtherProxy [put] mCallQueue is null"

    .line 48
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "OtherProxy"

    const-string v1, "\u6062\u590d\u9ed8\u8ba4\u72b6\u6001"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mStatus:I

    return-void
.end method

.method public start()V
    .locals 3

    const-string v0, "trace"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OtherProxy [start] mStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "trace"

    const-string v1, "OtherProxy [start] \u7ebf\u7a0b\u6c60\u6b63\u5728\u8fdb\u884c\u4e2d"

    .line 57
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 62
    invoke-static {}, Lcom/netease/androidcrashhandler/task/TaskExecutor;->getInstance()Lcom/netease/androidcrashhandler/task/TaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/task/TaskExecutor;->getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    .line 65
    :cond_1
    iput v1, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mStatus:I

    .line 68
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/androidcrashhandler/other/OtherProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/other/OtherProxy$1;-><init>(Lcom/netease/androidcrashhandler/other/OtherProxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "httpdns dispacher"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x5

    .line 104
    iput v0, p0, Lcom/netease/androidcrashhandler/other/OtherProxy;->mStatus:I

    return-void
.end method

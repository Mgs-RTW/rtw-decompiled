.class public Lcom/netease/pharos/threadManager/TimerManager;
.super Ljava/lang/Object;
.source "TimerManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TimerManager"

.field private static sTimerManager:Lcom/netease/pharos/threadManager/TimerManager;


# instance fields
.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/netease/pharos/threadManager/TimerManager;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/threadManager/TimerManager;
    .locals 2

    .line 22
    sget-object v0, Lcom/netease/pharos/threadManager/TimerManager;->sTimerManager:Lcom/netease/pharos/threadManager/TimerManager;

    if-nez v0, :cond_0

    const-string v0, "TimerManager"

    const-string v1, "TimerManager [getInstance] new TimerManager()"

    .line 23
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/netease/pharos/threadManager/TimerManager;

    invoke-direct {v0}, Lcom/netease/pharos/threadManager/TimerManager;-><init>()V

    sput-object v0, Lcom/netease/pharos/threadManager/TimerManager;->sTimerManager:Lcom/netease/pharos/threadManager/TimerManager;

    .line 27
    :cond_0
    sget-object v0, Lcom/netease/pharos/threadManager/TimerManager;->sTimerManager:Lcom/netease/pharos/threadManager/TimerManager;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .line 44
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTimer()Ljava/util/Timer;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/netease/pharos/threadManager/TimerManager;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    const-string v0, "TimerManager"

    const-string v1, "ThreadPoolManager [getTimer] new Timer"

    .line 32
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/threadManager/TimerManager;->mTimer:Ljava/util/Timer;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/threadManager/TimerManager;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

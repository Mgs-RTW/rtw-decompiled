.class public Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;
.super Ljava/lang/Object;
.source "ProtocolCheckProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetmonProxy"

.field private static sNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;


# instance fields
.field private mCycleOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->mCycleOpen:Z

    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;
    .locals 1

    .line 44
    sget-object v0, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->sNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    invoke-direct {v0}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->sNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    .line 47
    :cond_0
    sget-object v0, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->sNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .line 102
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addProtocolCheckCore(ILjava/lang/String;IIIILcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V
    .locals 12

    move/from16 v0, p8

    move-object/from16 v1, p11

    const-string v2, "NetmonProxy"

    .line 53
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetmonProxy [addNetmonCore1] \u53c2\u6570 type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", ip="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", port="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p4

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", time="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p6

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", interval="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", extra="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v3, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;

    invoke-direct {v3}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;-><init>()V

    move-object v5, v3

    move v6, p1

    move-object v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    .line 55
    invoke-virtual/range {v5 .. v11}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->init(ILjava/lang/String;IIII)V

    move-object/from16 v4, p7

    .line 56
    invoke-virtual {v3, v4}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->setmListener(Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;)V

    move-object/from16 v4, p9

    .line 57
    invoke-virtual {v3, v4}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->setmCycleTaskStopListener(Lcom/netease/pharos/linkcheck/CycleTaskStopListener;)V

    move-object/from16 v4, p10

    .line 58
    invoke-virtual {v3, v4}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->setmCheckOverNotifyListener(Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;)V

    .line 59
    invoke-virtual {v3, v0}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->setmInterval(I)V

    .line 60
    invoke-virtual {v3, v1}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->setmExtra(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getInstance()Lcom/netease/pharos/threadManager/ThreadPoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetmonProxy [addNetmonCore1] Exception="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public addProtocolCheckCore(ILjava/lang/String;IIIILjava/lang/String;Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V
    .locals 13

    move-object/from16 v0, p7

    move/from16 v1, p9

    move-object/from16 v2, p12

    const-string v3, "NetmonProxy"

    .line 71
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetmonProxy [addNetmonCore2] \u53c2\u6570 type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", ip="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v8, p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", port="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p3

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", count="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", time="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p6

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", region="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", interval="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", extra="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v4, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;

    invoke-direct {v4}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;-><init>()V

    move-object v6, v4

    move v7, p1

    move-object v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    .line 73
    invoke-virtual/range {v6 .. v12}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->init(ILjava/lang/String;IIII)V

    .line 74
    invoke-virtual {v4, v0}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->setRegion(Ljava/lang/String;)V

    move-object/from16 v0, p8

    .line 75
    invoke-virtual {v4, v0}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->setmListener(Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;)V

    move-object/from16 v0, p10

    .line 76
    invoke-virtual {v4, v0}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->setmCycleTaskStopListener(Lcom/netease/pharos/linkcheck/CycleTaskStopListener;)V

    move-object/from16 v0, p11

    .line 77
    invoke-virtual {v4, v0}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->setmCheckOverNotifyListener(Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;)V

    .line 78
    invoke-virtual {v4, v1}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->setmInterval(I)V

    .line 79
    invoke-virtual {v4, v2}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->setmExtra(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getInstance()Lcom/netease/pharos/threadManager/ThreadPoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetmonProxy [addNetmonCore2] Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public clean()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->mCycleOpen:Z

    const/4 v0, 0x0

    .line 95
    sput-object v0, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->sNetmonProxy:Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    return-void
.end method

.method public getCycleOpen()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->mCycleOpen:Z

    return v0
.end method

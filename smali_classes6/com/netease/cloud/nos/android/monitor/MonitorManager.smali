.class public Lcom/netease/cloud/nos/android/monitor/MonitorManager;
.super Ljava/lang/Object;
.source "MonitorManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static conn:Landroid/content/ServiceConnection;

.field private static iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

.field private static monitorConfigInit:Z

.field private static refCount:I

.field private static running:Z


# instance fields
.field private ctx:Landroid/content/Context;

.field private instConn:Landroid/content/ServiceConnection;

.field private instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

.field private item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->monitorConfigInit:Z

    .line 116
    sput-boolean v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->running:Z

    .line 117
    sput v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->refCount:I

    const/4 v0, 0x0

    .line 118
    sput-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    .line 119
    new-instance v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$2;

    invoke-direct {v0}, Lcom/netease/cloud/nos/android/monitor/MonitorManager$2;-><init>()V

    sput-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->conn:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netease/cloud/nos/android/monitor/StatisticItem;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->ctx:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    .line 23
    iput-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    .line 24
    new-instance v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;

    invoke-direct {v0, p0}, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;-><init>(Lcom/netease/cloud/nos/android/monitor/MonitorManager;)V

    iput-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instConn:Landroid/content/ServiceConnection;

    .line 44
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->ctx:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    return-void
.end method

.method static synthetic access$0(Lcom/netease/cloud/nos/android/monitor/MonitorManager;Lcom/netease/cloud/nos/android/monitor/ISendStat;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/netease/cloud/nos/android/monitor/MonitorManager;)Lcom/netease/cloud/nos/android/monitor/ISendStat;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    return-object p0
.end method

.method static synthetic access$3(Lcom/netease/cloud/nos/android/monitor/ISendStat;)V
    .locals 0

    .line 118
    sput-object p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    return-void
.end method

.method static synthetic access$4()Lcom/netease/cloud/nos/android/monitor/ISendStat;
    .locals 1

    .line 118
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    return-object v0
.end method

.method public static declared-synchronized endService(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    monitor-enter v0

    .line 175
    :try_start_0
    sget v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->refCount:I

    if-eqz v1, :cond_1

    sget v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->refCount:I

    add-int/lit8 v2, v1, -0x1

    sput v2, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->refCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    sget-object p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "unbind MonitorService success"

    invoke-static {p0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit v0

    return-void

    .line 176
    :cond_1
    :goto_0
    :try_start_1
    sget-object p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MonitorService has binded to else or unbinded: refCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    sget v2, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->refCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {p0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 174
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized runService(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    monitor-enter v0

    .line 187
    :try_start_0
    sget-boolean v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 188
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 191
    :try_start_1
    sput-boolean v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->running:Z

    .line 192
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v2, "init MonitorService"

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/netease/cloud/nos/android/service/MonitorService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 186
    monitor-exit v0

    throw p0
.end method

.method public static sendStatItem(Landroid/content/Context;Lcom/netease/cloud/nos/android/monitor/StatisticItem;)V
    .locals 2

    .line 137
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "iSendStat is null, bind to MonitorService"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {p0}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->runService(Landroid/content/Context;)V

    .line 141
    new-instance v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    invoke-direct {v0, p0, p1}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;-><init>(Landroid/content/Context;Lcom/netease/cloud/nos/android/monitor/StatisticItem;)V

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instStartService()V

    return-void

    .line 146
    :cond_0
    :try_start_0
    sget-object p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    invoke-interface {p0, p1}, Lcom/netease/cloud/nos/android/monitor/ISendStat;->sendStat(Lcom/netease/cloud/nos/android/monitor/StatisticItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 148
    sget-object p1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send Statistic data exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "iSendStat="

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {p1, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static declared-synchronized startService(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    monitor-enter v0

    .line 157
    :try_start_0
    sget v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->refCount:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->refCount:I

    if-lez v1, :cond_0

    .line 158
    sget-object p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MonitorService has binded: refCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->refCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit v0

    return-void

    .line 162
    :cond_0
    :try_start_1
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 164
    monitor-exit v0

    return-void

    .line 167
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 168
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/netease/cloud/nos/android/service/MonitorService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    sget-object v2, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 170
    sget-object p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bind MonitorService, iSendStat="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 156
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public instEndService()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 112
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "unbind MonitorService success"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public instSendConfig()V
    .locals 7

    .line 53
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "instSendStat is null, not bind to MonitorService"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_0
    sget-boolean v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->monitorConfigInit:Z

    if-eqz v0, :cond_1

    return-void

    .line 62
    :cond_1
    :try_start_0
    new-instance v0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;

    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getMonitorHost()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getConnectionTimeout()I

    move-result v3

    .line 64
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getSoTimeout()I

    move-result v4

    .line 65
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getMonitorInterval()J

    move-result-wide v5

    move-object v1, v0

    .line 62
    invoke-direct/range {v1 .. v6}, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;-><init>(Ljava/lang/String;IIJ)V

    .line 66
    iget-object v1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    invoke-interface {v1, v0}, Lcom/netease/cloud/nos/android/monitor/ISendStat;->sendConfig(Lcom/netease/cloud/nos/android/monitor/MonitorConfig;)V

    .line 67
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "send config to MonitorService"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send MonitorConfig exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "instSendStat="

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public instSendStatItem()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "instSendStat is null, not bind to MonitorService"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-interface {v0, v1}, Lcom/netease/cloud/nos/android/monitor/ISendStat;->sendStat(Lcom/netease/cloud/nos/android/monitor/StatisticItem;)Z

    move-result v0

    sput-boolean v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->monitorConfigInit:Z

    .line 87
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send statistic to MonitorService, get configInit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    sget-boolean v2, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->monitorConfigInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 90
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send Statistic data exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "instSendStat="

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public instStartService()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->ctx:Landroid/content/Context;

    const-class v2, Lcom/netease/cloud/nos/android/service/MonitorService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    iget-object v1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 106
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bind MonitorService, instSendStat="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

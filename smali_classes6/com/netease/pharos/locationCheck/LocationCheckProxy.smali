.class public Lcom/netease/pharos/locationCheck/LocationCheckProxy;
.super Ljava/lang/Object;
.source "LocationCheckProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationCheckProxy"

.field private static sLocationCheckProxy:Lcom/netease/pharos/locationCheck/LocationCheckProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->mIsStart:Z

    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/locationCheck/LocationCheckProxy;
    .locals 1

    .line 36
    sget-object v0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->sLocationCheckProxy:Lcom/netease/pharos/locationCheck/LocationCheckProxy;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;

    invoke-direct {v0}, Lcom/netease/pharos/locationCheck/LocationCheckProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->sLocationCheckProxy:Lcom/netease/pharos/locationCheck/LocationCheckProxy;

    .line 39
    :cond_0
    sget-object v0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->sLocationCheckProxy:Lcom/netease/pharos/locationCheck/LocationCheckProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .line 90
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->mIsStart:Z

    .line 83
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->clean()V

    return-void
.end method

.method public isStart()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->mIsStart:Z

    return v0
.end method

.method public start()I
    .locals 4

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->mIsStart:Z

    .line 51
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaCore;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/locationCheck/NetAreaCore;->start()I

    .line 54
    new-instance v0, Lcom/netease/pharos/locationCheck/LocationHunter;

    invoke-direct {v0}, Lcom/netease/pharos/locationCheck/LocationHunter;-><init>()V

    .line 55
    invoke-virtual {v0}, Lcom/netease/pharos/locationCheck/LocationHunter;->start()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0, v1}, Lcom/netease/pharos/locationCheck/LocationHunter;->checkRegion(Lcom/netease/pharos/deviceCheck/DeviceInfo;)Lcom/netease/pharos/deviceCheck/DeviceInfo;

    .line 61
    :cond_0
    invoke-static {}, Lcom/netease/pharos/locationCheck/RecheckResult;->getInstance()Lcom/netease/pharos/locationCheck/RecheckResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/locationCheck/RecheckResult;->chooseBest()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    .line 64
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->handleProbeAndHarborRegion()V

    .line 67
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocationCheckProxy [start] call report, info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationCheckProxy"

    invoke-static {v3, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/netease/pharos/report/ReportProxy;->getInstance()Lcom/netease/pharos/report/ReportProxy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/pharos/report/ReportProxy;->report(Ljava/lang/String;)I

    return v1
.end method

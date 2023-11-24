.class public Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;
.super Ljava/lang/Object;
.source "DevicesInfoProxy.java"


# static fields
.field private static sDevicesInfoProxy:Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;


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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->mIsStart:Z

    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;
    .locals 1

    .line 31
    sget-object v0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->sDevicesInfoProxy:Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    invoke-direct {v0}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->sDevicesInfoProxy:Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    .line 34
    :cond_0
    sget-object v0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->sDevicesInfoProxy:Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .line 79
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

    .line 71
    iput-boolean v0, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->mIsStart:Z

    .line 72
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->clean()V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isStart()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->mIsStart:Z

    return v0
.end method

.method public start()I
    .locals 2

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->mIsStart:Z

    .line 55
    invoke-static {}, Lcom/netease/pharos/deviceCheck/NetDevices;->getInstances()Lcom/netease/pharos/deviceCheck/NetDevices;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/pharos/deviceCheck/NetDevices;->init(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lcom/netease/pharos/deviceCheck/NetDevices;->getInstances()Lcom/netease/pharos/deviceCheck/NetDevices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/deviceCheck/NetDevices;->start()I

    .line 60
    invoke-static {}, Lcom/netease/pharos/deviceCheck/IpInfoCore;->getInstances()Lcom/netease/pharos/deviceCheck/IpInfoCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/deviceCheck/IpInfoCore;->start()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->mIsStart:Z

    :cond_0
    return v0
.end method

.class public Lcom/netease/pharos/qos/QosProxy;
.super Ljava/lang/Object;
.source "QosProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QosProxy"

.field private static sQosProxy:Lcom/netease/pharos/qos/QosProxy;


# instance fields
.field private mIsInit:Z

.field private mIsStart:Z

.field private mQosCore:Lcom/netease/pharos/qos/QosCore;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/netease/pharos/qos/QosProxy;->mIsInit:Z

    .line 28
    iput-boolean v0, p0, Lcom/netease/pharos/qos/QosProxy;->mIsStart:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/qos/QosProxy;
    .locals 1

    .line 38
    sget-object v0, Lcom/netease/pharos/qos/QosProxy;->sQosProxy:Lcom/netease/pharos/qos/QosProxy;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/netease/pharos/qos/QosProxy;

    invoke-direct {v0}, Lcom/netease/pharos/qos/QosProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/qos/QosProxy;->sQosProxy:Lcom/netease/pharos/qos/QosProxy;

    .line 42
    :cond_0
    sget-object v0, Lcom/netease/pharos/qos/QosProxy;->sQosProxy:Lcom/netease/pharos/qos/QosProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .line 143
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    const-string v0, "QosProxy"

    const-string v1, "QosProxy [clean] start"

    .line 128
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/netease/pharos/qos/QosCore;->clean()V

    :cond_0
    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/netease/pharos/qos/QosProxy;->mIsInit:Z

    .line 136
    iput-boolean v0, p0, Lcom/netease/pharos/qos/QosProxy;->mIsStart:Z

    return-void
.end method

.method public getDest()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/netease/pharos/qos/QosCore;->getDest()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getQosEffective()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/netease/pharos/qos/QosCore;->getQosEffective()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getQosResult()Lorg/json/JSONObject;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/netease/pharos/qos/QosCore;->getQosResult()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public init()V
    .locals 3

    .line 47
    iget-boolean v0, p0, Lcom/netease/pharos/qos/QosProxy;->mIsInit:Z

    const-string v1, "QosProxy"

    if-nez v0, :cond_1

    const-string v0, "QosProxy [init] start"

    .line 48
    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/netease/pharos/qos/QosCore;

    invoke-direct {v0}, Lcom/netease/pharos/qos/QosCore;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/PharosProxy;->getmContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getRapQos()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/qos/QosCore;->init(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 55
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    invoke-virtual {v0}, Lcom/netease/pharos/qos/QosCore;->parse()I

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/netease/pharos/qos/QosProxy;->mIsInit:Z

    goto :goto_0

    :cond_1
    const-string v0, "QosProxy [init] already init"

    .line 59
    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public start_qosCore()V
    .locals 4

    const-string v0, "QosProxy"

    const-string v1, "QosProxy [start_qosCore] start"

    .line 64
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    if-eqz v1, :cond_0

    const-string v1, "\u5f00\u59cbQos\u6a21\u5757"

    .line 67
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    invoke-virtual {v1}, Lcom/netease/pharos/qos/QosCore;->checkIsNeedToQos()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QosProxy [start_qosCore] JSONException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

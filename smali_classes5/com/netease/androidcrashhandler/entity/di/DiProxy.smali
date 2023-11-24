.class public Lcom/netease/androidcrashhandler/entity/di/DiProxy;
.super Ljava/lang/Object;
.source "DiProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DiProxy"

.field private static sDiProxy:Lcom/netease/androidcrashhandler/entity/di/DiProxy;


# instance fields
.field private mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

.field private mIsStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mIsStart:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/entity/di/DiProxy;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mIsStart:Z

    return p0
.end method

.method static synthetic access$100(Lcom/netease/androidcrashhandler/entity/di/DiProxy;)Lcom/netease/androidcrashhandler/entity/di/DiInfo;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    return-object p0
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;
    .locals 1

    .line 34
    sget-object v0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->sDiProxy:Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->sDiProxy:Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    .line 38
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->sDiProxy:Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    return-object v0
.end method


# virtual methods
.method public fresh()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->fresh()V

    return-void
.end method

.method public getDiInfoJson()Lorg/json/JSONObject;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->getDiInfoJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "trace"

    const-string v1, "DiProxy [init] start"

    .line 42
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    invoke-direct {v0, p1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "DiProxy [start] start"

    .line 113
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/androidcrashhandler/entity/di/DiProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/entity/di/DiProxy$1;-><init>(Lcom/netease/androidcrashhandler/entity/di/DiProxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "crashhunter_di_thread"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mIsStart:Z

    return-void
.end method

.method public writeToLocalFile()V
    .locals 3

    .line 165
    const-class v0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    monitor-enter v0

    :try_start_0
    const-string v1, "trace"

    const-string v2, "DiProxy [writeToLocalFile] start"

    .line 166
    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    if-eqz v1, :cond_0

    const-string v1, "trace"

    const-string v2, "DiProxy [writeToLocalFile] [writeToLocalFile]"

    .line 169
    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->fresh()V

    .line 171
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->writeToLocalFile()V

    goto :goto_0

    :cond_0
    const-string v1, "trace"

    const-string v2, "DiProxy [writeToLocalFile] mDiInfo is null"

    .line 174
    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

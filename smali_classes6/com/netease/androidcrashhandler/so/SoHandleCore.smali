.class public Lcom/netease/androidcrashhandler/so/SoHandleCore;
.super Ljava/lang/Object;
.source "SoHandleCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SoHandleCore"

.field private static sSoHandleCore:Lcom/netease/androidcrashhandler/so/SoHandleCore;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStopLibunwind:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/so/SoHandleCore;->mStopLibunwind:Z

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/netease/androidcrashhandler/so/SoHandleCore;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/so/SoHandleCore;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/netease/androidcrashhandler/so/SoHandleCore;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/so/SoHandleCore;
    .locals 1

    .line 32
    sget-object v0, Lcom/netease/androidcrashhandler/so/SoHandleCore;->sSoHandleCore:Lcom/netease/androidcrashhandler/so/SoHandleCore;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/netease/androidcrashhandler/so/SoHandleCore;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/so/SoHandleCore;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/so/SoHandleCore;->sSoHandleCore:Lcom/netease/androidcrashhandler/so/SoHandleCore;

    .line 36
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/so/SoHandleCore;->sSoHandleCore:Lcom/netease/androidcrashhandler/so/SoHandleCore;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/netease/androidcrashhandler/so/SoHandleCore;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isStopLibunwind()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/so/SoHandleCore;->mStopLibunwind:Z

    return v0
.end method

.method public setmStopLibunwind(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/so/SoHandleCore;->mStopLibunwind:Z

    return-void
.end method

.method public start()V
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/so/SoHandleCore;->storageSoUuidMd5()V

    return-void
.end method

.method public storageSoUuidMd5()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "SoHandleCore [setSoUuidMd5] start"

    .line 130
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/netease/androidcrashhandler/so/SoHandleCore;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/androidcrashhandler/so/SoHandleCore$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/so/SoHandleCore$1;-><init>(Lcom/netease/androidcrashhandler/so/SoHandleCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "getSoUuidMd5Thread"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

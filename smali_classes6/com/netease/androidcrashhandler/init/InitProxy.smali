.class public Lcom/netease/androidcrashhandler/init/InitProxy;
.super Ljava/lang/Object;
.source "InitProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Init"

.field public static sConfigFilePath:Ljava/lang/String;

.field private static sInitProxy:Lcom/netease/androidcrashhandler/init/InitProxy;

.field public static sUploadFilePath:Ljava/lang/String;


# instance fields
.field public mBranch:Ljava/lang/String;

.field public mCallbackMethodName:Ljava/lang/String;

.field public mCallbackSoPath:Ljava/lang/String;

.field public mEB:Ljava/lang/String;

.field public mEngineVersion:Ljava/lang/String;

.field public mHasSetUrl:Z

.field public mIsOpenBreakpad:Z

.field public mPacakageName:Ljava/lang/String;

.field public mResVersion:Ljava/lang/String;

.field public mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mPacakageName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 20
    iput-wide v1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mStartTime:J

    .line 22
    iput-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackSoPath:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackMethodName:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mResVersion:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mEngineVersion:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mBranch:Ljava/lang/String;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsOpenBreakpad:Z

    const-string v0, "-1"

    .line 34
    iput-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mEB:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mHasSetUrl:Z

    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;
    .locals 2

    .line 51
    sget-object v0, Lcom/netease/androidcrashhandler/init/InitProxy;->sInitProxy:Lcom/netease/androidcrashhandler/init/InitProxy;

    if-nez v0, :cond_0

    const-string v0, "trace"

    const-string v1, "InitProxy [getInstance] start"

    .line 52
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/netease/androidcrashhandler/init/InitProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/init/InitProxy;->sInitProxy:Lcom/netease/androidcrashhandler/init/InitProxy;

    .line 56
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/init/InitProxy;->sInitProxy:Lcom/netease/androidcrashhandler/init/InitProxy;

    return-object v0
.end method


# virtual methods
.method public getCallbackMethodName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackSoPath()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackSoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getEB()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mEB:Ljava/lang/String;

    return-object v0
.end method

.method public getEngineVersion()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mEngineVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getResVersion()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mResVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getmBranch()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mBranch:Ljava/lang/String;

    return-object v0
.end method

.method public getsPacakageName()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mPacakageName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    const-string v0, "trace"

    const-string v1, "InitProxy [init] start"

    .line 61
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "trace"

    const-string v0, "InitProxy [init] params error"

    .line 64
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    const-string v1, "os_type"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Lcom/netease/androidcrashhandler/util/CUtil;->getTransid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    const-string v2, "transid"

    invoke-virtual {v1, v2, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mPacakageName:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/crashhunter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/crashhunter_config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/androidcrashhandler/init/InitProxy;->sConfigFilePath:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 83
    :cond_1
    invoke-static {p1}, Lcom/netease/androidcrashhandler/util/CUtil;->getEB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mEB:Ljava/lang/String;

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mStartTime:J

    .line 87
    invoke-static {p1}, Lcom/netease/androidcrashhandler/util/CUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mResVersion:Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mResVersion:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 90
    iget-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mResVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mEngineVersion:Ljava/lang/String;

    .line 93
    :cond_2
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    const-string v0, "client_v"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/init/InitProxy;->getEngineVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/init/InitProxy;->getResVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "trace"

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitProxy [init] sPacakageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mPacakageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sUploadFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isHasSetUrl()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mHasSetUrl:Z

    return v0
.end method

.method public ismIsOpenBreakpad()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsOpenBreakpad:Z

    return v0
.end method

.method public setCallbackMethodName(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackMethodName:Ljava/lang/String;

    return-void
.end method

.method public setCallbackSoPath(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackSoPath:Ljava/lang/String;

    return-void
.end method

.method public setEB(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mEB:Ljava/lang/String;

    return-void
.end method

.method public setEngineVersion(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mEngineVersion:Ljava/lang/String;

    return-void
.end method

.method public setHasSetUrl(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mHasSetUrl:Z

    return-void
.end method

.method public setResVersion(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mResVersion:Ljava/lang/String;

    return-void
.end method

.method public setmBranch(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mBranch:Ljava/lang/String;

    return-void
.end method

.method public setmIsOpenBreakpad(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsOpenBreakpad:Z

    return-void
.end method

.method public setsPacakageName(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mPacakageName:Ljava/lang/String;

    return-void
.end method

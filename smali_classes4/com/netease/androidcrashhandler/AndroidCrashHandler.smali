.class public Lcom/netease/androidcrashhandler/AndroidCrashHandler;
.super Ljava/lang/Object;
.source "AndroidCrashHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidCrashHandler"

.field private static sAndroidCrashHandler:Lcom/netease/androidcrashhandler/AndroidCrashHandler;


# instance fields
.field private mCrashCallBack:Lcom/netease/androidcrashhandler/MyCrashCallBack;

.field private mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

.field private mMyCHListener:Lcom/netease/androidcrashhandler/MyCHListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 79
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [static ] load lagHunter so"

    .line 80
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lagHunter"

    .line 81
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_0
    const-string v0, "AndroidCrashHandler"

    .line 84
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "trace"

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashHunterProxy [static ] load AndroidCrashHandler so Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mCrashCallBack:Lcom/netease/androidcrashhandler/MyCrashCallBack;

    .line 30
    iput-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mMyCHListener:Lcom/netease/androidcrashhandler/MyCHListener;

    .line 32
    iput-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/AndroidCrashHandler;)Lcom/netease/androidcrashhandler/MyCrashCallBack;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mCrashCallBack:Lcom/netease/androidcrashhandler/MyCrashCallBack;

    return-object p0
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;
    .locals 1

    .line 100
    sget-object v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->sAndroidCrashHandler:Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Lcom/netease/androidcrashhandler/util/LogUtils;->setDebug()V

    .line 102
    new-instance v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->sAndroidCrashHandler:Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    .line 105
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->sAndroidCrashHandler:Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    return-object v0
.end method


# virtual methods
.method native NCCrashHandler(Ljava/lang/String;)V
.end method

.method native NCSetCfgInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native frameCallback()V
.end method

.method native frameCallbackLikeGame()V
.end method

.method public getCrashIdentity()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;
    .locals 1

    .line 215
    invoke-static {}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getInstance()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v0

    return-object v0
.end method

.method public handleNCCrash(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method native isLag()V
.end method

.method public setCallBack(Lcom/netease/androidcrashhandler/MyCrashCallBack;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mCrashCallBack:Lcom/netease/androidcrashhandler/MyCrashCallBack;

    return-void
.end method

.method native setCpuIntervalThreshold(F)V
.end method

.method native setCpuSurgeThreshold(F)V
.end method

.method native setCpuThreshold(F)V
.end method

.method public setEngineVersion(Ljava/lang/String;)V
    .locals 3

    const-string v0, "trace"

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidCrashHandler [setEngineVersion] version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "trace"

    const-string v0, "AndroidCrashHandler [setEngineVersion] version is null"

    .line 304
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 308
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    const-string v1, "engine_version"

    invoke-virtual {v0, v1, p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method native setFpsThreshold(I)V
.end method

.method public setIPrePostCallBack(Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

    return-void
.end method

.method native setIsOpenLog(I)V
.end method

.method native setLagFilePath(Ljava/lang/String;)V
.end method

.method native setLazyTime(I)V
.end method

.method public setLogEventType()V
    .locals 0

    return-void
.end method

.method native setMaxCatchTime(I)V
.end method

.method public setMyCHListener(Lcom/netease/androidcrashhandler/MyCHListener;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mMyCHListener:Lcom/netease/androidcrashhandler/MyCHListener;

    return-void
.end method

.method native setNTEventOccurCallBackContent()V
.end method

.method native setNTEventOccurCallBackFile()V
.end method

.method native setOpenCPUMonitor(Z)V
.end method

.method native setOpenFPSMonitor(Z)V
.end method

.method public setResVersion(Ljava/lang/String;)V
    .locals 3

    const-string v0, "trace"

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidCrashHandler [setResVersion] version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "trace"

    const-string v0, "AndroidCrashHandler [setResVersion] version is null"

    .line 292
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 296
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    const-string v1, "res_version"

    invoke-virtual {v0, v1, p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSoCallBackMethod()V
    .locals 4

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [setSoCallBackMethod] start"

    .line 198
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getCallbackMethodName()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trace"

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashHunterProxy [setSoCallBackMethod] callback_method_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "callback_method_name"

    .line 203
    invoke-virtual {p0, v1, v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->NCSetCfgInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [setSoCallBackMethod] callback_method_name \u4e3a\u7a7a"

    .line 206
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSoPath(Landroid/content/Context;)V
    .locals 3

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [setSoPath] start"

    .line 178
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getCallbackSoPath()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string p1, "trace"

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [setSoPath] callback_so_path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "callback_so_path"

    .line 190
    invoke-virtual {p0, p1, v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->NCSetCfgInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "trace"

    const-string v0, "CrashHunterProxy [setSoPath] callback_so_path \u4e3a\u7a7a"

    .line 193
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method native setUnWIndType(I)V
.end method

.method public start(Landroid/content/Context;)V
    .locals 4

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [start] Native\u5d29\u6e83\u6355\u6349\u673a\u5236\u542f\u52a8"

    .line 111
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/netease/androidcrashhandler/so/SoHandleCore;->getInstance()Lcom/netease/androidcrashhandler/so/SoHandleCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/so/SoHandleCore;->init(Landroid/content/Context;)V

    .line 113
    invoke-static {}, Lcom/netease/androidcrashhandler/so/SoHandleCore;->getInstance()Lcom/netease/androidcrashhandler/so/SoHandleCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/so/SoHandleCore;->start()V

    .line 138
    :try_start_0
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getDiInfoJson()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "arch_type"

    .line 142
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "arch_type"

    .line 143
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    const-string v2, "is_emulator"

    .line 146
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "is_emulator"

    .line 147
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string p1, "trace"

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashHunterProxy [start] archType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", is_emulator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x40

    if-ne p1, v0, :cond_2

    const-string v0, "false"

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [start] libunwind skipping"

    .line 154
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setUnWIndType(I)V

    goto :goto_0

    :cond_2
    const-string p1, "trace"

    const-string v0, "CrashHunterProxy [start] libunwind standard"

    .line 158
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x20

    .line 160
    invoke-virtual {p0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setUnWIndType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "trace"

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [start] Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    :goto_0
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    sget-object p1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setLagFilePath(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getmLazyInterval()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setLazyTime(I)V

    .line 169
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getmCatchLimit()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setMaxCatchTime(I)V

    const-string p1, "is_open_breakpad"

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/init/InitProxy;->ismIsOpenBreakpad()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->NCSetCfgInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "trace"

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrashHunterProxy [start] sUploadFilePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    sget-object p1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->NCCrashHandler(Ljava/lang/String;)V

    return-void
.end method

.method public startCrashHandle(Landroid/content/Context;)V
    .locals 5

    const-string v0, "trace"

    const-string v1, "AndroidCrashHandler [startCrashHandle] \u4ece\u65e7\u63a5\u53e3\u542f\u52a8crashhunter"

    .line 233
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->init(Landroid/content/Context;)V

    .line 236
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 241
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 242
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "trace"

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AndroidCrashHandler [startCrashHandle] key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "callback_so_path"

    .line 248
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "callback_method_name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    const-string v2, "trace"

    const-string v3, "AndroidCrashHandler [startCrashHandle] setSoParam"

    .line 249
    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setSoParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_2
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    new-instance v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler$1;

    invoke-direct {v0, p0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler$1;-><init>(Lcom/netease/androidcrashhandler/AndroidCrashHandler;)V

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setJavaCrashCallBack(Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;)V

    const-string p1, "trace"

    const-string v0, "AndroidCrashHandler [startCrashHandle] \u901a\u8fc7\u65e7\u65b9\u5f0f\u8f6c\u63a5\uff0c\u8c03\u7528setIPrePostCallBack"

    .line 270
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setIPrePostCallBack(Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;)V

    .line 273
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->startHuntingCrash()V

    return-void
.end method

.method native startLagMonitor()V
.end method

.method native stopLagMonitor()V
.end method

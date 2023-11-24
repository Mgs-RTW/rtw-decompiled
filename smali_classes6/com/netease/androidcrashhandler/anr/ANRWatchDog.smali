.class public Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
.super Ljava/lang/Thread;
.source "ANRWatchDog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;,
        Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;,
        Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANR_INTERCEPTOR:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

.field private static final DEFAULT_ANR_LISTENER:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

.field private static final DEFAULT_ANR_TIMEOUT:I = 0x1388

.field private static final DEFAULT_INTERRUPTION_LISTENER:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;


# instance fields
.field private _anrInterceptor:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

.field private _anrListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

.field private _ignoreDebugger:Z

.field private _interruptionListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;

.field private _logThreadsWithoutStackTrace:Z

.field private _namePrefix:Ljava/lang/String;

.field private volatile _reported:Z

.field private volatile _tick:J

.field private final _ticker:Ljava/lang/Runnable;

.field private final _timeoutInterval:I

.field private final _uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$1;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$1;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_ANR_LISTENER:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

    .line 72
    new-instance v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$2;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$2;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_ANR_INTERCEPTOR:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

    .line 78
    new-instance v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$3;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$3;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_INTERRUPTION_LISTENER:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1388

    .line 109
    invoke-direct {p0, v0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 84
    sget-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_ANR_LISTENER:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_anrListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

    .line 85
    sget-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_ANR_INTERCEPTOR:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_anrInterceptor:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

    .line 86
    sget-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_INTERRUPTION_LISTENER:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;

    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_interruptionListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_uiHandler:Landroid/os/Handler;

    const-string v0, ""

    .line 91
    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_logThreadsWithoutStackTrace:Z

    .line 93
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_ignoreDebugger:Z

    const-wide/16 v1, 0x0

    .line 95
    iput-wide v1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    .line 96
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_reported:Z

    .line 98
    new-instance v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$4;

    invoke-direct {v0, p0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$4;-><init>(Lcom/netease/androidcrashhandler/anr/ANRWatchDog;)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_ticker:Ljava/lang/Runnable;

    .line 120
    iput p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_timeoutInterval:I

    return-void
.end method

.method static synthetic access$002(Lcom/netease/androidcrashhandler/anr/ANRWatchDog;J)J
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/netease/androidcrashhandler/anr/ANRWatchDog;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_reported:Z

    return p1
.end method


# virtual methods
.method public getTimeoutInterval()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_timeoutInterval:I

    return v0
.end method

.method public run()V
    .locals 9

    const-string v0, "trace"

    const-string v1, "ANRWatchDog [run] start"

    .line 245
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "|ANR-WatchDog|"

    .line 246
    invoke-virtual {p0, v0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->setName(Ljava/lang/String;)V

    .line 248
    iget v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_timeoutInterval:I

    int-to-long v0, v0

    .line 249
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_7

    .line 250
    iget-wide v2, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 251
    :goto_1
    iget-wide v7, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    add-long/2addr v7, v0

    iput-wide v7, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    if-eqz v2, :cond_2

    .line 253
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_uiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_ticker:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    :cond_2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    iget-wide v2, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    cmp-long v7, v2, v5

    if-eqz v7, :cond_0

    iget-boolean v2, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_reported:Z

    if-nez v2, :cond_0

    .line 267
    iget-boolean v2, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_ignoreDebugger:Z

    if-nez v2, :cond_4

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "ANRWatchdog"

    const-string v3, "An ANR was detected but ignored because the debugger is connected (you can prevent this with setIgnoreDebugger(true))"

    .line 268
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iput-boolean v4, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_reported:Z

    goto :goto_0

    .line 273
    :cond_4
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_anrInterceptor:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    invoke-interface {v0, v1, v2}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;->intercept(J)J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-lez v2, :cond_5

    goto :goto_0

    .line 279
    :cond_5
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 280
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_logThreadsWithoutStackTrace:Z

    invoke-static {v0, v1, v2, v3}, Lcom/netease/androidcrashhandler/anr/ANRError;->New(JLjava/lang/String;Z)Lcom/netease/androidcrashhandler/anr/ANRError;

    move-result-object v0

    goto :goto_2

    .line 283
    :cond_6
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/anr/ANRError;->NewMainOnly(J)Lcom/netease/androidcrashhandler/anr/ANRError;

    move-result-object v0

    .line 287
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_anrListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

    invoke-interface {v1, v0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;->onAppNotResponding(Lcom/netease/androidcrashhandler/anr/ANRError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 292
    :catch_0
    iget v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_timeoutInterval:I

    int-to-long v0, v0

    .line 293
    iput-boolean v4, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_reported:Z

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "trace"

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR-WatchDog InterruptedException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_interruptionListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;

    invoke-interface {v1, v0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;->onInterrupted(Ljava/lang/InterruptedException;)V

    return-void

    :cond_7
    return-void
.end method

.method public setANRInterceptor(Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;)Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
    .locals 0

    if-nez p1, :cond_0

    .line 155
    sget-object p1, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_ANR_INTERCEPTOR:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_anrInterceptor:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

    goto :goto_0

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_anrInterceptor:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

    :goto_0
    return-object p0
.end method

.method public setANRListener(Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;)Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
    .locals 0

    if-nez p1, :cond_0

    .line 139
    sget-object p1, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_ANR_LISTENER:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_anrListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

    goto :goto_0

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_anrListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

    :goto_0
    return-object p0
.end method

.method public setIgnoreDebugger(Z)Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_ignoreDebugger:Z

    return-object p0
.end method

.method public setInterruptionListener(Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;)Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
    .locals 0

    if-nez p1, :cond_0

    .line 171
    sget-object p1, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_INTERRUPTION_LISTENER:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;

    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_interruptionListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;

    goto :goto_0

    .line 173
    :cond_0
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_interruptionListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;

    :goto_0
    return-object p0
.end method

.method public setLogThreadsWithoutStackTrace(Z)Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_logThreadsWithoutStackTrace:Z

    return-object p0
.end method

.method public setReportAllThreads()Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
    .locals 1

    const-string v0, ""

    .line 210
    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setReportMainThreadOnly()Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
    .locals 1

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setReportThreadNamePrefix(Ljava/lang/String;)Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    return-object p0
.end method

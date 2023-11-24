.class public Lcom/netease/androidcrashhandler/anr/AnrProxy;
.super Ljava/lang/Object;
.source "AnrProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnrProxy"

.field private static sAnrProxy:Lcom/netease/androidcrashhandler/anr/AnrProxy;


# instance fields
.field private mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/AnrProxy;->mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/anr/AnrProxy;)Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/netease/androidcrashhandler/anr/AnrProxy;->mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

    return-object p0
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/anr/AnrProxy;
    .locals 1

    .line 27
    sget-object v0, Lcom/netease/androidcrashhandler/anr/AnrProxy;->sAnrProxy:Lcom/netease/androidcrashhandler/anr/AnrProxy;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/netease/androidcrashhandler/anr/AnrProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/anr/AnrProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/AnrProxy;->sAnrProxy:Lcom/netease/androidcrashhandler/anr/AnrProxy;

    .line 31
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/anr/AnrProxy;->sAnrProxy:Lcom/netease/androidcrashhandler/anr/AnrProxy;

    return-object v0
.end method


# virtual methods
.method public getJavaCrashCallBack()Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/AnrProxy;->mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

    return-object v0
.end method

.method public setJavaCrashCallBack(Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/AnrProxy;->mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "AnrProxy [start] start"

    .line 35
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;-><init>(I)V

    .line 38
    new-instance v1, Lcom/netease/androidcrashhandler/anr/AnrProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/anr/AnrProxy$1;-><init>(Lcom/netease/androidcrashhandler/anr/AnrProxy;)V

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->setANRListener(Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;)Lcom/netease/androidcrashhandler/anr/ANRWatchDog;

    .line 58
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->start()V

    return-void
.end method

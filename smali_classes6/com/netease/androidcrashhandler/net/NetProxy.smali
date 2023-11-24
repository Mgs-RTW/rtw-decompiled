.class public Lcom/netease/androidcrashhandler/net/NetProxy;
.super Ljava/lang/Object;
.source "NetProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Net_Proxy"

.field private static mNetproxy:Lcom/netease/androidcrashhandler/net/NetProxy;


# instance fields
.field private mURL:Ljava/lang/String;


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

    .line 24
    iput-object v0, p0, Lcom/netease/androidcrashhandler/net/NetProxy;->mURL:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/net/NetProxy;
    .locals 1

    .line 33
    sget-object v0, Lcom/netease/androidcrashhandler/net/NetProxy;->mNetproxy:Lcom/netease/androidcrashhandler/net/NetProxy;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/netease/androidcrashhandler/net/NetProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/net/NetProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/net/NetProxy;->mNetproxy:Lcom/netease/androidcrashhandler/net/NetProxy;

    .line 37
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/net/NetProxy;->mNetproxy:Lcom/netease/androidcrashhandler/net/NetProxy;

    return-object v0
.end method


# virtual methods
.method public getURL()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/NetProxy;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method public sendRequest(Lcom/netease/androidcrashhandler/net/NetRequest;)V
    .locals 2

    const-string v0, "trace"

    const-string v1, "NetProxy [sendRequest]"

    .line 41
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lcom/netease/androidcrashhandler/net/NetCenter;->excute(Lcom/netease/androidcrashhandler/net/NetRequest;)Lcom/netease/androidcrashhandler/net/NetResponse;

    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/net/NetRequest;->onResponseHandle(Lcom/netease/androidcrashhandler/net/NetResponse;)V

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/netease/androidcrashhandler/net/NetProxy;->mURL:Ljava/lang/String;

    return-void
.end method

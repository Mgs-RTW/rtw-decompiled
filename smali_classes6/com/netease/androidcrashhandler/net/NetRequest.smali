.class public abstract Lcom/netease/androidcrashhandler/net/NetRequest;
.super Ljava/lang/Object;
.source "NetRequest.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/net/NetResponseImpl;
.implements Lcom/netease/androidcrashhandler/net/NetInterrupterImpl;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/androidcrashhandler/net/NetResponseImpl;",
        "Lcom/netease/androidcrashhandler/net/NetInterrupterImpl;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final BOUNDARY:Ljava/lang/String; = "--------------------------THISISHUANGJIEFENG"

.field private static final TAG:Ljava/lang/String; = "NOne_Request"


# instance fields
.field protected mConnectTimeOut:I

.field protected mHeaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mMethod:Ljava/lang/String;

.field private mNetCallbackImpl:Lcom/netease/androidcrashhandler/net/NetCallbackImpl;

.field protected mParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mReadTimeOut:I

.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://appdump.nie.netease.com/upload"

    .line 30
    iput-object v0, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mUrl:Ljava/lang/String;

    const-string v0, "POST"

    .line 31
    iput-object v0, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mMethod:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mHeaderMap:Ljava/util/HashMap;

    const/16 v0, 0x1388

    .line 36
    iput v0, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mConnectTimeOut:I

    .line 37
    iput v0, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mReadTimeOut:I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mParamsMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mNetCallbackImpl:Lcom/netease/androidcrashhandler/net/NetCallbackImpl;

    return-void
.end method


# virtual methods
.method public getmConnectTimeOut()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mConnectTimeOut:I

    return v0
.end method

.method public getmHeaderMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mHeaderMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getmMethod()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getmNetCallbackImpl()Lcom/netease/androidcrashhandler/net/NetCallbackImpl;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mNetCallbackImpl:Lcom/netease/androidcrashhandler/net/NetCallbackImpl;

    return-object v0
.end method

.method public getmParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mParamsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getmReadTimeOut()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mReadTimeOut:I

    return v0
.end method

.method public getmUrl()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setmConnectTimeOut(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mConnectTimeOut:I

    return-void
.end method

.method public setmHeaderMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mHeaderMap:Ljava/util/HashMap;

    return-void
.end method

.method public setmMethod(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mMethod:Ljava/lang/String;

    return-void
.end method

.method public setmNetCallbackImpl(Lcom/netease/androidcrashhandler/net/NetCallbackImpl;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mNetCallbackImpl:Lcom/netease/androidcrashhandler/net/NetCallbackImpl;

    return-void
.end method

.method public setmParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mParamsMap:Ljava/util/Map;

    return-void
.end method

.method public setmReadTimeOut(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mReadTimeOut:I

    return-void
.end method

.method public setmUrl(Ljava/lang/String;)V
    .locals 3

    const-string v0, "trace"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetRequest [setmUrl] url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetRequest mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mHeaderMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mHeaderMap="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mHeaderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mParamsMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mParams="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/NetRequest;->mParamsMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

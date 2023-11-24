.class public Lcom/netease/unisdk/netproxy/RpcId;
.super Ljava/lang/Object;
.source "RpcId.java"


# static fields
.field private static rpcidCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private rpcId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/netease/unisdk/netproxy/RpcId;->rpcidCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/netease/unisdk/netproxy/RpcId;->rpcId:I

    .line 17
    sget-object v0, Lcom/netease/unisdk/netproxy/RpcId;->rpcidCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/netproxy/RpcId;->rpcId:I

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 21
    iget v0, p0, Lcom/netease/unisdk/netproxy/RpcId;->rpcId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lio/netty/util/Recycler$DefaultHandle;
.super Ljava/lang/Object;
.source "Recycler.java"

# interfaces
.implements Lio/netty/util/Recycler$Handle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/Recycler$Handle;"
    }
.end annotation


# instance fields
.field private lastRecycledId:I

.field private recycleId:I

.field private stack:Lio/netty/util/Recycler$Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler$Stack<",
            "*>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/netty/util/Recycler$Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "*>;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    return-void
.end method

.method static synthetic access$0(Lio/netty/util/Recycler$DefaultHandle;I)V
    .locals 0

    .line 106
    iput p1, p0, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    return-void
.end method

.method static synthetic access$1(Lio/netty/util/Recycler$DefaultHandle;Lio/netty/util/Recycler$Stack;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    return-void
.end method

.method static synthetic access$2(Lio/netty/util/Recycler$DefaultHandle;)I
    .locals 0

    .line 107
    iget p0, p0, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    return p0
.end method

.method static synthetic access$3(Lio/netty/util/Recycler$DefaultHandle;)I
    .locals 0

    .line 106
    iget p0, p0, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    return p0
.end method

.method static synthetic access$4(Lio/netty/util/Recycler$DefaultHandle;I)V
    .locals 0

    .line 107
    iput p1, p0, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    return-void
.end method

.method static synthetic access$5(Lio/netty/util/Recycler$DefaultHandle;Ljava/lang/Object;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lio/netty/util/Recycler$DefaultHandle;->value:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$6(Lio/netty/util/Recycler$DefaultHandle;)Ljava/lang/Object;
    .locals 0

    .line 110
    iget-object p0, p0, Lio/netty/util/Recycler$DefaultHandle;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7(Lio/netty/util/Recycler$DefaultHandle;)Lio/netty/util/Recycler$Stack;
    .locals 0

    .line 109
    iget-object p0, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    return-object p0
.end method


# virtual methods
.method public recycle()V
    .locals 5

    .line 117
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    iget-object v1, v1, Lio/netty/util/Recycler$Stack;->thread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    invoke-virtual {v0, p0}, Lio/netty/util/Recycler$Stack;->push(Lio/netty/util/Recycler$DefaultHandle;)V

    return-void

    .line 125
    :cond_0
    invoke-static {}, Lio/netty/util/Recycler;->access$1()Lio/netty/util/concurrent/FastThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 126
    iget-object v2, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/util/Recycler$WeakOrderQueue;

    if-nez v2, :cond_1

    .line 128
    iget-object v2, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    new-instance v3, Lio/netty/util/Recycler$WeakOrderQueue;

    iget-object v4, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    invoke-direct {v3, v4, v0}, Lio/netty/util/Recycler$WeakOrderQueue;-><init>(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 130
    :cond_1
    invoke-virtual {v2, p0}, Lio/netty/util/Recycler$WeakOrderQueue;->add(Lio/netty/util/Recycler$DefaultHandle;)V

    return-void
.end method

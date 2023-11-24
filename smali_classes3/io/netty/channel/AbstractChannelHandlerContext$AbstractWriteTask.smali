.class abstract Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;
.super Lio/netty/util/internal/RecyclableMpscLinkedQueueNode;
.source "AbstractChannelHandlerContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/AbstractChannelHandlerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractWriteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/internal/RecyclableMpscLinkedQueueNode<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private ctx:Lio/netty/channel/AbstractChannelHandlerContext;

.field private msg:Ljava/lang/Object;

.field private promise:Lio/netty/channel/ChannelPromise;

.field private size:I


# direct methods
.method private constructor <init>(Lio/netty/util/Recycler$Handle;)V
    .locals 0

    .line 903
    invoke-direct {p0, p1}, Lio/netty/util/internal/RecyclableMpscLinkedQueueNode;-><init>(Lio/netty/util/Recycler$Handle;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/Recycler$Handle;Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;)V
    .locals 0

    .line 902
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;-><init>(Lio/netty/util/Recycler$Handle;)V

    return-void
.end method

.method protected static init(Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 909
    iput-object p2, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->msg:Ljava/lang/Object;

    .line 910
    iput-object p4, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 911
    iput p3, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->size:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    .line 917
    :try_start_0
    iget v1, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->size:I

    if-lez v1, :cond_0

    .line 918
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->access$0(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/AbstractChannel;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 921
    iget v2, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->size:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lio/netty/channel/ChannelOutboundBuffer;->decrementPendingOutboundBytes(J)V

    .line 924
    :cond_0
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v2, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->msg:Ljava/lang/Object;

    iget-object v3, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->promise:Lio/netty/channel/ChannelPromise;

    invoke-virtual {p0, v1, v2, v3}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->write(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 928
    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->msg:Ljava/lang/Object;

    .line 929
    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->promise:Lio/netty/channel/ChannelPromise;

    return-void

    :catchall_0
    move-exception v1

    .line 927
    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 928
    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->msg:Ljava/lang/Object;

    .line 929
    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 930
    throw v1
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->value()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Runnable;
    .locals 0

    return-object p0
.end method

.method protected write(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 939
    invoke-static {p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->access$1(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

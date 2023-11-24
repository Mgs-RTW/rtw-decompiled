.class public abstract Lio/netty/util/internal/RecyclableMpscLinkedQueueNode;
.super Lio/netty/util/internal/MpscLinkedQueueNode;
.source "RecyclableMpscLinkedQueueNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/MpscLinkedQueueNode<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final handle:Lio/netty/util/Recycler$Handle;


# direct methods
.method protected constructor <init>(Lio/netty/util/Recycler$Handle;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueueNode;-><init>()V

    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Lio/netty/util/internal/RecyclableMpscLinkedQueueNode;->handle:Lio/netty/util/Recycler$Handle;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "handle"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected abstract recycle(Lio/netty/util/Recycler$Handle;)V
.end method

.method final unlink()V
    .locals 1

    .line 37
    invoke-super {p0}, Lio/netty/util/internal/MpscLinkedQueueNode;->unlink()V

    .line 38
    iget-object v0, p0, Lio/netty/util/internal/RecyclableMpscLinkedQueueNode;->handle:Lio/netty/util/Recycler$Handle;

    invoke-virtual {p0, v0}, Lio/netty/util/internal/RecyclableMpscLinkedQueueNode;->recycle(Lio/netty/util/Recycler$Handle;)V

    return-void
.end method

.class final Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;
.super Lio/netty/util/internal/MpscLinkedQueueNode;
.source "MpscLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/MpscLinkedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultNode"
.end annotation

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
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 381
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueueNode;-><init>()V

    .line 382
    iput-object p1, p0, Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected clearMaybe()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 393
    iput-object v1, p0, Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;->value:Ljava/lang/Object;

    return-object v0
.end method

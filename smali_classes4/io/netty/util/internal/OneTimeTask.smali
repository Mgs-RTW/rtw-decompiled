.class public abstract Lio/netty/util/internal/OneTimeTask;
.super Lio/netty/util/internal/MpscLinkedQueueNode;
.source "OneTimeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/internal/MpscLinkedQueueNode<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueueNode;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/util/internal/OneTimeTask;->value()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Runnable;
    .locals 0

    return-object p0
.end method

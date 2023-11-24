.class Lio/netty/util/internal/MpscLinkedQueue$1;
.super Ljava/lang/Object;
.source "MpscLinkedQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/MpscLinkedQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private node:Lio/netty/util/internal/MpscLinkedQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/MpscLinkedQueueNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/netty/util/internal/MpscLinkedQueue;


# direct methods
.method constructor <init>(Lio/netty/util/internal/MpscLinkedQueue;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lio/netty/util/internal/MpscLinkedQueue$1;->this$0:Lio/netty/util/internal/MpscLinkedQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iget-object p1, p0, Lio/netty/util/internal/MpscLinkedQueue$1;->this$0:Lio/netty/util/internal/MpscLinkedQueue;

    invoke-static {p1}, Lio/netty/util/internal/MpscLinkedQueue;->access$000(Lio/netty/util/internal/MpscLinkedQueue;)Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object p1

    iput-object p1, p0, Lio/netty/util/internal/MpscLinkedQueue$1;->node:Lio/netty/util/internal/MpscLinkedQueueNode;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lio/netty/util/internal/MpscLinkedQueue$1;->node:Lio/netty/util/internal/MpscLinkedQueueNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lio/netty/util/internal/MpscLinkedQueue$1;->node:Lio/netty/util/internal/MpscLinkedQueueNode;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->value()Ljava/lang/Object;

    move-result-object v1

    .line 217
    invoke-virtual {v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->next()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/internal/MpscLinkedQueue$1;->node:Lio/netty/util/internal/MpscLinkedQueueNode;

    return-object v1

    .line 214
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 223
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

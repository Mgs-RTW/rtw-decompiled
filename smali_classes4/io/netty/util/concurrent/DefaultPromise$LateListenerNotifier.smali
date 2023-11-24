.class final Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;
.super Ljava/lang/Object;
.source "DefaultPromise.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/DefaultPromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LateListenerNotifier"
.end annotation


# instance fields
.field private l:Lio/netty/util/concurrent/GenericFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/netty/util/concurrent/DefaultPromise;


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "*>;)V"
        }
    .end annotation

    .line 858
    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    iput-object p2, p0, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;->l:Lio/netty/util/concurrent/GenericFutureListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 864
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->access$10(Lio/netty/util/concurrent/DefaultPromise;)Lio/netty/util/concurrent/DefaultPromise$LateListeners;

    move-result-object v0

    .line 865
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;->l:Lio/netty/util/concurrent/GenericFutureListener;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 867
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    new-instance v1, Lio/netty/util/concurrent/DefaultPromise$LateListeners;

    iget-object v2, p0, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    invoke-direct {v1, v2}, Lio/netty/util/concurrent/DefaultPromise$LateListeners;-><init>(Lio/netty/util/concurrent/DefaultPromise;)V

    invoke-static {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;->access$11(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/DefaultPromise$LateListeners;)V

    move-object v0, v1

    .line 869
    :cond_0
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;->l:Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/DefaultPromise$LateListeners;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 870
    iput-object v1, p0, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;->l:Lio/netty/util/concurrent/GenericFutureListener;

    .line 873
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/concurrent/DefaultPromise$LateListeners;->run()V

    return-void
.end method

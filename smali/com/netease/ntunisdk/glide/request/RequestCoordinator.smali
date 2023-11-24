.class public interface abstract Lcom/netease/ntunisdk/glide/request/RequestCoordinator;
.super Ljava/lang/Object;
.source "RequestCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;
    }
.end annotation


# virtual methods
.method public abstract canNotifyCleared(Lcom/netease/ntunisdk/glide/request/Request;)Z
.end method

.method public abstract canNotifyStatusChanged(Lcom/netease/ntunisdk/glide/request/Request;)Z
.end method

.method public abstract canSetImage(Lcom/netease/ntunisdk/glide/request/Request;)Z
.end method

.method public abstract getRoot()Lcom/netease/ntunisdk/glide/request/RequestCoordinator;
.end method

.method public abstract isAnyResourceSet()Z
.end method

.method public abstract onRequestFailed(Lcom/netease/ntunisdk/glide/request/Request;)V
.end method

.method public abstract onRequestSuccess(Lcom/netease/ntunisdk/glide/request/Request;)V
.end method

.class public Lcom/netease/ntunisdk/glide/manager/RequestTracker;
.super Ljava/lang/Object;
.source "RequestTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestTracker"


# instance fields
.field private isPaused:Z

.field private final pendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/request/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final requests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/netease/ntunisdk/glide/request/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 31
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addRequest(Lcom/netease/ntunisdk/glide/request/Request;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAndRemove(Lcom/netease/ntunisdk/glide/request/Request;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 71
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 73
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/request/Request;->clear()V

    :cond_3
    return v0
.end method

.method public clearRequests()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/glide/request/Request;

    .line 131
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->clearAndRemove(Lcom/netease/ntunisdk/glide/request/Request;)Z

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public isPaused()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->isPaused:Z

    return v0
.end method

.method public pauseAllRequests()V
    .locals 3

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->isPaused:Z

    .line 100
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/glide/request/Request;

    .line 101
    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    :cond_1
    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->clear()V

    .line 103
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public pauseRequests()V
    .locals 3

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->isPaused:Z

    .line 86
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/glide/request/Request;

    .line 87
    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->pause()V

    .line 92
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public restartRequests()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/glide/request/Request;

    .line 139
    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->isCleared()Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->clear()V

    .line 141
    iget-boolean v2, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->isPaused:Z

    if-nez v2, :cond_1

    .line 142
    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->begin()V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public resumeRequests()V
    .locals 3

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->isPaused:Z

    .line 111
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/glide/request/Request;

    .line 115
    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->begin()V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public runRequest(Lcom/netease/ntunisdk/glide/request/Request;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->isPaused:Z

    if-nez v0, :cond_0

    .line 44
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/request/Request;->begin()V

    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/request/Request;->clear()V

    const/4 v0, 0x2

    const-string v1, "RequestTracker"

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Paused, delaying request"

    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{numRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->isPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

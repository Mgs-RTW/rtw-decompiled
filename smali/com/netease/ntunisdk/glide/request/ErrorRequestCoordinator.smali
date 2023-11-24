.class public final Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;
.super Ljava/lang/Object;
.source "ErrorRequestCoordinator.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/request/RequestCoordinator;
.implements Lcom/netease/ntunisdk/glide/request/Request;


# instance fields
.field private volatile error:Lcom/netease/ntunisdk/glide/request/Request;

.field private errorState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

.field private final parent:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

.field private volatile primary:Lcom/netease/ntunisdk/glide/request/Request;

.field private primaryState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

.field private final requestLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    .line 21
    sget-object v0, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->errorState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    .line 25
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->parent:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    return-void
.end method

.method private isValidRequest(Lcom/netease/ntunisdk/glide/request/Request;)Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primary:Lcom/netease/ntunisdk/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    sget-object v1, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->FAILED:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->error:Lcom/netease/ntunisdk/glide/request/Request;

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private parentCanNotifyCleared()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->parent:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/glide/request/RequestCoordinator;->canNotifyCleared(Lcom/netease/ntunisdk/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private parentCanNotifyStatusChanged()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->parent:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/netease/ntunisdk/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private parentCanSetImage()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->parent:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/glide/request/RequestCoordinator;->canSetImage(Lcom/netease/ntunisdk/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public begin()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    if-eq v1, v2, :cond_0

    .line 38
    sget-object v1, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    iput-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    .line 39
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primary:Lcom/netease/ntunisdk/glide/request/Request;

    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->begin()V

    .line 41
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canNotifyCleared(Lcom/netease/ntunisdk/glide/request/Request;)Z
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->parentCanNotifyCleared()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->isValidRequest(Lcom/netease/ntunisdk/glide/request/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 125
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public canNotifyStatusChanged(Lcom/netease/ntunisdk/glide/request/Request;)Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->parentCanNotifyStatusChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->isValidRequest(Lcom/netease/ntunisdk/glide/request/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public canSetImage(Lcom/netease/ntunisdk/glide/request/Request;)Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->parentCanSetImage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->isValidRequest(Lcom/netease/ntunisdk/glide/request/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    iput-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    .line 48
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primary:Lcom/netease/ntunisdk/glide/request/Request;

    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->clear()V

    .line 51
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->errorState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    if-eq v1, v2, :cond_0

    .line 52
    sget-object v1, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    iput-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->errorState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    .line 53
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->error:Lcom/netease/ntunisdk/glide/request/Request;

    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->clear()V

    .line 55
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRoot()Lcom/netease/ntunisdk/glide/request/RequestCoordinator;
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->parent:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->parent:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/RequestCoordinator;->getRoot()Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 189
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAnyResourceSet()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primary:Lcom/netease/ntunisdk/glide/request/Request;

    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->isAnyResourceSet()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->error:Lcom/netease/ntunisdk/glide/request/Request;

    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->isAnyResourceSet()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCleared()Z
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->errorState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isComplete()Z
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->errorState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEquivalentTo(Lcom/netease/ntunisdk/glide/request/Request;)Z
    .locals 3

    .line 95
    instance-of v0, p1, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;

    .line 97
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primary:Lcom/netease/ntunisdk/glide/request/Request;

    iget-object v2, p1, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primary:Lcom/netease/ntunisdk/glide/request/Request;

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/glide/request/Request;->isEquivalentTo(Lcom/netease/ntunisdk/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->error:Lcom/netease/ntunisdk/glide/request/Request;

    iget-object p1, p1, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->error:Lcom/netease/ntunisdk/glide/request/Request;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/glide/request/Request;->isEquivalentTo(Lcom/netease/ntunisdk/glide/request/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isRunning()Z
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->errorState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRequestFailed(Lcom/netease/ntunisdk/glide/request/Request;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->error:Lcom/netease/ntunisdk/glide/request/Request;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 169
    sget-object p1, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->FAILED:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    .line 170
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->errorState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    sget-object v1, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    if-eq p1, v1, :cond_0

    .line 171
    sget-object p1, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->errorState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    .line 172
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->error:Lcom/netease/ntunisdk/glide/request/Request;

    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/request/Request;->begin()V

    .line 174
    :cond_0
    monitor-exit v0

    return-void

    .line 177
    :cond_1
    sget-object p1, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->FAILED:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->errorState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    .line 179
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->parent:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    if-eqz p1, :cond_2

    .line 180
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->parent:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    invoke-interface {p1, p0}, Lcom/netease/ntunisdk/glide/request/RequestCoordinator;->onRequestFailed(Lcom/netease/ntunisdk/glide/request/Request;)V

    .line 182
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRequestSuccess(Lcom/netease/ntunisdk/glide/request/Request;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primary:Lcom/netease/ntunisdk/glide/request/Request;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    sget-object p1, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    goto :goto_0

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->error:Lcom/netease/ntunisdk/glide/request/Request;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 157
    sget-object p1, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->errorState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    .line 159
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->parent:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    if-eqz p1, :cond_2

    .line 160
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->parent:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    invoke-interface {p1, p0}, Lcom/netease/ntunisdk/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/netease/ntunisdk/glide/request/Request;)V

    .line 162
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pause()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_0

    .line 62
    sget-object v1, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->PAUSED:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    iput-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    .line 63
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primary:Lcom/netease/ntunisdk/glide/request/Request;

    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->pause()V

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->errorState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_1

    .line 66
    sget-object v1, Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;->PAUSED:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    iput-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->errorState:Lcom/netease/ntunisdk/glide/request/RequestCoordinator$RequestState;

    .line 67
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->error:Lcom/netease/ntunisdk/glide/request/Request;

    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->pause()V

    .line 69
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRequests(Lcom/netease/ntunisdk/glide/request/Request;Lcom/netease/ntunisdk/glide/request/Request;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->primary:Lcom/netease/ntunisdk/glide/request/Request;

    .line 31
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->error:Lcom/netease/ntunisdk/glide/request/Request;

    return-void
.end method

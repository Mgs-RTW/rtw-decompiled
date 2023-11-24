.class Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;
.super Ljava/lang/Object;
.source "ActivityFragmentLifecycle.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/manager/Lifecycle;


# instance fields
.field private isDestroyed:Z

.field private isStarted:Z

.field private final lifecycleListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/netease/ntunisdk/glide/manager/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 16
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/netease/ntunisdk/glide/manager/LifecycleListener;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/manager/LifecycleListener;->onDestroy()V

    goto :goto_0

    .line 37
    :cond_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;->isStarted:Z

    if-eqz v0, :cond_1

    .line 38
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/manager/LifecycleListener;->onStart()V

    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/manager/LifecycleListener;->onStop()V

    :goto_0
    return-void
.end method

.method onDestroy()V
    .locals 2

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;->isDestroyed:Z

    .line 65
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

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

    check-cast v1, Lcom/netease/ntunisdk/glide/manager/LifecycleListener;

    .line 66
    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/manager/LifecycleListener;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onStart()V
    .locals 2

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;->isStarted:Z

    .line 51
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

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

    check-cast v1, Lcom/netease/ntunisdk/glide/manager/LifecycleListener;

    .line 52
    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/manager/LifecycleListener;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onStop()V
    .locals 2

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;->isStarted:Z

    .line 58
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

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

    check-cast v1, Lcom/netease/ntunisdk/glide/manager/LifecycleListener;

    .line 59
    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/manager/LifecycleListener;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/netease/ntunisdk/glide/manager/LifecycleListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

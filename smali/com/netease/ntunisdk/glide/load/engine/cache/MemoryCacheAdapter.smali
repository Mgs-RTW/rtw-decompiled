.class public Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCacheAdapter;
.super Ljava/lang/Object;
.source "MemoryCacheAdapter.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache;


# instance fields
.field private listener:Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMemory()V
    .locals 0

    return-void
.end method

.method public getCurrentSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public put(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/engine/Resource;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/Key;",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "*>;)",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 38
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCacheAdapter;->listener:Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;->onResourceRemoved(Lcom/netease/ntunisdk/glide/load/engine/Resource;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Lcom/netease/ntunisdk/glide/load/Key;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/Key;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public setResourceRemovedListener(Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCacheAdapter;->listener:Lcom/netease/ntunisdk/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    return-void
.end method

.method public setSizeMultiplier(F)V
    .locals 0

    return-void
.end method

.method public trimMemory(I)V
    .locals 0

    return-void
.end method

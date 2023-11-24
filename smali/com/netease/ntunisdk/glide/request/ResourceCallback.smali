.class public interface abstract Lcom/netease/ntunisdk/glide/request/ResourceCallback;
.super Ljava/lang/Object;
.source "ResourceCallback.java"


# virtual methods
.method public abstract getLock()Ljava/lang/Object;
.end method

.method public abstract onLoadFailed(Lcom/netease/ntunisdk/glide/load/engine/GlideException;)V
.end method

.method public abstract onResourceReady(Lcom/netease/ntunisdk/glide/load/engine/Resource;Lcom/netease/ntunisdk/glide/load/DataSource;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "*>;",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation
.end method

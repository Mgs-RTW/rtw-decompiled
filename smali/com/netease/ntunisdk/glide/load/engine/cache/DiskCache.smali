.class public interface abstract Lcom/netease/ntunisdk/glide/load/engine/cache/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/engine/cache/DiskCache$Writer;,
        Lcom/netease/ntunisdk/glide/load/engine/cache/DiskCache$Factory;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract delete(Lcom/netease/ntunisdk/glide/load/Key;)V
.end method

.method public abstract get(Lcom/netease/ntunisdk/glide/load/Key;)Ljava/io/File;
.end method

.method public abstract put(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/engine/cache/DiskCache$Writer;)V
.end method

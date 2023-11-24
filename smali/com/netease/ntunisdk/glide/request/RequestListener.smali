.class public interface abstract Lcom/netease/ntunisdk/glide/request/RequestListener;
.super Ljava/lang/Object;
.source "RequestListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onLoadFailed(Lcom/netease/ntunisdk/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TR;>;Z)Z"
        }
    .end annotation
.end method

.method public abstract onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/load/DataSource;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Object;",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TR;>;",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation
.end method

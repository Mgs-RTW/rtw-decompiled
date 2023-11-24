.class public interface abstract Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;
.super Ljava/lang/Object;
.source "DataFetcherGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/engine/DataFetcherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FetcherReadyCallback"
.end annotation


# virtual methods
.method public abstract onDataFetcherFailed(Lcom/netease/ntunisdk/glide/load/Key;Ljava/lang/Exception;Lcom/netease/ntunisdk/glide/load/data/DataFetcher;Lcom/netease/ntunisdk/glide/load/DataSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/Key;",
            "Ljava/lang/Exception;",
            "Lcom/netease/ntunisdk/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDataFetcherReady(Lcom/netease/ntunisdk/glide/load/Key;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/data/DataFetcher;Lcom/netease/ntunisdk/glide/load/DataSource;Lcom/netease/ntunisdk/glide/load/Key;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/Key;",
            "Ljava/lang/Object;",
            "Lcom/netease/ntunisdk/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            "Lcom/netease/ntunisdk/glide/load/Key;",
            ")V"
        }
    .end annotation
.end method

.method public abstract reschedule()V
.end method

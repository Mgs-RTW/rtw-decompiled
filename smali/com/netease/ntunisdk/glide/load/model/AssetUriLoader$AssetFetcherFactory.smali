.class public interface abstract Lcom/netease/ntunisdk/glide/load/model/AssetUriLoader$AssetFetcherFactory;
.super Ljava/lang/Object;
.source "AssetUriLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/model/AssetUriLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AssetFetcherFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract buildFetcher(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/netease/ntunisdk/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/data/DataFetcher<",
            "TData;>;"
        }
    .end annotation
.end method

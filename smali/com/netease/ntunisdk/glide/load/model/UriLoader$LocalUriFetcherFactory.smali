.class public interface abstract Lcom/netease/ntunisdk/glide/load/model/UriLoader$LocalUriFetcherFactory;
.super Ljava/lang/Object;
.source "UriLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/model/UriLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocalUriFetcherFactory"
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
.method public abstract build(Landroid/net/Uri;)Lcom/netease/ntunisdk/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/data/DataFetcher<",
            "TData;>;"
        }
    .end annotation
.end method

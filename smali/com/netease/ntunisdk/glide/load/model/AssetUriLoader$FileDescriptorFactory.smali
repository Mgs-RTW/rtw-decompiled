.class public Lcom/netease/ntunisdk/glide/load/model/AssetUriLoader$FileDescriptorFactory;
.super Ljava/lang/Object;
.source "AssetUriLoader.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;
.implements Lcom/netease/ntunisdk/glide/load/model/AssetUriLoader$AssetFetcherFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/model/AssetUriLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDescriptorFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory<",
        "Landroid/net/Uri;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/netease/ntunisdk/glide/load/model/AssetUriLoader$AssetFetcherFactory<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/AssetUriLoader$FileDescriptorFactory;->assetManager:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public build(Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/model/ModelLoader<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance p1, Lcom/netease/ntunisdk/glide/load/model/AssetUriLoader;

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/model/AssetUriLoader$FileDescriptorFactory;->assetManager:Landroid/content/res/AssetManager;

    invoke-direct {p1, v0, p0}, Lcom/netease/ntunisdk/glide/load/model/AssetUriLoader;-><init>(Landroid/content/res/AssetManager;Lcom/netease/ntunisdk/glide/load/model/AssetUriLoader$AssetFetcherFactory;)V

    return-object p1
.end method

.method public buildFetcher(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/netease/ntunisdk/glide/load/data/DataFetcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/data/DataFetcher<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/netease/ntunisdk/glide/load/data/FileDescriptorAssetPathFetcher;

    invoke-direct {v0, p1, p2}, Lcom/netease/ntunisdk/glide/load/data/FileDescriptorAssetPathFetcher;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public teardown()V
    .locals 0

    return-void
.end method

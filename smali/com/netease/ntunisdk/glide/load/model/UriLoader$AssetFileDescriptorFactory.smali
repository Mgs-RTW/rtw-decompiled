.class public final Lcom/netease/ntunisdk/glide/load/model/UriLoader$AssetFileDescriptorFactory;
.super Ljava/lang/Object;
.source "UriLoader.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;
.implements Lcom/netease/ntunisdk/glide/load/model/UriLoader$LocalUriFetcherFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/model/UriLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetFileDescriptorFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory<",
        "Landroid/net/Uri;",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;",
        "Lcom/netease/ntunisdk/glide/load/model/UriLoader$LocalUriFetcherFactory<",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/UriLoader$AssetFileDescriptorFactory;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public build(Landroid/net/Uri;)Lcom/netease/ntunisdk/glide/load/data/DataFetcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/data/DataFetcher<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/netease/ntunisdk/glide/load/data/AssetFileDescriptorLocalUriFetcher;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/model/UriLoader$AssetFileDescriptorFactory;->contentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p1}, Lcom/netease/ntunisdk/glide/load/data/AssetFileDescriptorLocalUriFetcher;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method public build(Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/model/ModelLoader<",
            "Landroid/net/Uri;",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance p1, Lcom/netease/ntunisdk/glide/load/model/UriLoader;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/glide/load/model/UriLoader;-><init>(Lcom/netease/ntunisdk/glide/load/model/UriLoader$LocalUriFetcherFactory;)V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
.class public Lcom/netease/ntunisdk/glide/load/model/UrlUriLoader$StreamFactory;
.super Ljava/lang/Object;
.source "UrlUriLoader.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/model/UrlUriLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/model/ModelLoader<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/netease/ntunisdk/glide/load/model/UrlUriLoader;

    const-class v1, Lcom/netease/ntunisdk/glide/load/model/GlideUrl;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/glide/load/model/UrlUriLoader;-><init>(Lcom/netease/ntunisdk/glide/load/model/ModelLoader;)V

    return-object v0
.end method

.method public teardown()V
    .locals 0

    return-void
.end method

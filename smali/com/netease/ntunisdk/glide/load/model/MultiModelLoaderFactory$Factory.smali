.class Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory$Factory;
.super Ljava/lang/Object;
.source "MultiModelLoaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Ljava/util/List;Landroidx/core/util/Pools$Pool;)Lcom/netease/ntunisdk/glide/load/model/MultiModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/load/model/ModelLoader<",
            "TModel;TData;>;>;",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Lcom/netease/ntunisdk/glide/load/model/MultiModelLoader<",
            "TModel;TData;>;"
        }
    .end annotation

    .line 218
    new-instance v0, Lcom/netease/ntunisdk/glide/load/model/MultiModelLoader;

    invoke-direct {v0, p1, p2}, Lcom/netease/ntunisdk/glide/load/model/MultiModelLoader;-><init>(Ljava/util/List;Landroidx/core/util/Pools$Pool;)V

    return-object v0
.end method

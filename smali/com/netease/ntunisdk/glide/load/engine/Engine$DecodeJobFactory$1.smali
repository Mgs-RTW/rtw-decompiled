.class Lcom/netease/ntunisdk/glide/load/engine/Engine$DecodeJobFactory$1;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/engine/Engine$DecodeJobFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/util/pool/FactoryPools$Factory<",
        "Lcom/netease/ntunisdk/glide/load/engine/DecodeJob<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/glide/load/engine/Engine$DecodeJobFactory;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/glide/load/engine/Engine$DecodeJobFactory;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/Engine$DecodeJobFactory$1;->this$0:Lcom/netease/ntunisdk/glide/load/engine/Engine$DecodeJobFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/ntunisdk/glide/load/engine/DecodeJob<",
            "*>;"
        }
    .end annotation

    .line 484
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/Engine$DecodeJobFactory$1;->this$0:Lcom/netease/ntunisdk/glide/load/engine/Engine$DecodeJobFactory;

    iget-object v1, v1, Lcom/netease/ntunisdk/glide/load/engine/Engine$DecodeJobFactory;->diskCacheProvider:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DiskCacheProvider;

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/engine/Engine$DecodeJobFactory$1;->this$0:Lcom/netease/ntunisdk/glide/load/engine/Engine$DecodeJobFactory;

    iget-object v2, v2, Lcom/netease/ntunisdk/glide/load/engine/Engine$DecodeJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;-><init>(Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$DiskCacheProvider;Landroidx/core/util/Pools$Pool;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 481
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/load/engine/Engine$DecodeJobFactory$1;->create()Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;
.super Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BaseKeyPool;
.source "LruArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruArrayPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BaseKeyPool<",
        "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruArrayPool$Key;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BaseKeyPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruArrayPool$Key;
    .locals 1

    .line 234
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruArrayPool$Key;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruArrayPool$Key;-><init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;)V

    return-object v0
.end method

.method protected bridge synthetic create()Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/Poolable;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;->create()Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruArrayPool$Key;

    move-result-object v0

    return-object v0
.end method

.method get(ILjava/lang/Class;)Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruArrayPool$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruArrayPool$Key;"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;->get()Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruArrayPool$Key;

    .line 228
    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruArrayPool$Key;->init(ILjava/lang/Class;)V

    return-object v0
.end method

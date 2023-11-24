.class final Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
.super Ljava/lang/Object;
.source "SizeStrategy.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# instance fields
.field private final pool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

.field size:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->pool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 142
    instance-of v0, p1, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 143
    check-cast p1, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    .line 144
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    iget p1, p1, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    return v0
.end method

.method public init(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    return-void
.end method

.method public offer()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->pool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->offer(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/Poolable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 158
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;
.super Ljava/lang/Object;
.source "SizeStrategy.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/LruPoolStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;,
        Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
    }
.end annotation


# static fields
.field private static final MAX_SIZE_MULTIPLE:I = 0x8


# instance fields
.field private final groupedMap:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/GroupedLinkedMap<",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

.field private final sortedSizes:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    .line 23
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/GroupedLinkedMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 24
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/PrettyPrintTreeMap;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/PrettyPrintTreeMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/NavigableMap;

    return-void
.end method

.method private decrementBitmapOfSize(Ljava/lang/Integer;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 74
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/NavigableMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method static getBitmapString(I)Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    .line 102
    invoke-static {p0}, Lcom/netease/ntunisdk/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result p0

    .line 103
    invoke-static {p0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4

    .line 40
    invoke-static {p1, p2, p3}, Lcom/netease/ntunisdk/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 41
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->get(I)Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v0, v0, 0x8

    if-gt v3, v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->offer(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 46
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->get(I)Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-result-object v1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->get(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 54
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;)V

    :cond_1
    return-object v0
.end method

.method public getSize(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 93
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 0

    .line 87
    invoke-static {p1, p2, p3}, Lcom/netease/ntunisdk/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    .line 88
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    .line 82
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 28
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 29
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->get(I)Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v1, v0, p1}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->put(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/NavigableMap;

    iget v1, v0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 34
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/NavigableMap;

    iget v0, v0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v2, p1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeLast()Landroid/graphics/Bitmap;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 65
    invoke-static {v0}, Lcom/netease/ntunisdk/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SizeStrategy:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  SortedSizes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/NavigableMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTargetQueue;
.super Ljava/lang/Object;
.source "ListPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/ListPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreloadTargetQueue"
.end annotation


# instance fields
.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 3

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    new-instance v2, Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTarget;

    invoke-direct {v2}, Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTarget;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public next(II)Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTarget;
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTarget;

    .line 243
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 244
    iput p1, v0, Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTarget;->photoWidth:I

    .line 245
    iput p2, v0, Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTarget;->photoHeight:I

    return-object v0
.end method

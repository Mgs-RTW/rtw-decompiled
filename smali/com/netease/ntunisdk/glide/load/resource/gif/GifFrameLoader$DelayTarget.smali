.class Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;
.super Lcom/netease/ntunisdk/glide/request/target/CustomTarget;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelayTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/glide/request/target/CustomTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field final index:I

.field private resource:Landroid/graphics/Bitmap;

.field private final targetTime:J


# direct methods
.method constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    .line 323
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/target/CustomTarget;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;->handler:Landroid/os/Handler;

    .line 325
    iput p2, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;->index:I

    .line 326
    iput-wide p3, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;->targetTime:J

    return-void
.end method


# virtual methods
.method getResource()Landroid/graphics/Bitmap;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;->resource:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    .line 343
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;->resource:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/netease/ntunisdk/glide/request/transition/Transition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/netease/ntunisdk/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;->resource:Landroid/graphics/Bitmap;

    .line 337
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;->handler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 338
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;->handler:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;->targetTime:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/transition/Transition;)V
    .locals 0

    .line 316
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/glide/load/resource/gif/GifFrameLoader$DelayTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/netease/ntunisdk/glide/request/transition/Transition;)V

    return-void
.end method

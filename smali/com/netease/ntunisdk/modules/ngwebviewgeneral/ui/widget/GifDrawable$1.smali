.class Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable$1;
.super Ljava/lang/Object;
.source "GifDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable$1;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 99
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable$1;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;

    invoke-static {v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->access$000(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable$1;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;

    invoke-static {v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->access$300(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;)Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable$1;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;

    invoke-static {v2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->access$200(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->access$102(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 103
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable$1;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;

    invoke-static {v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->access$200(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable$1;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;

    invoke-static {v2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->access$300(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;)Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->getFrameCount()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->access$202(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;I)I

    .line 104
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable$1;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;

    invoke-static {v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->access$400(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable$1;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;

    invoke-static {v4}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->access$300(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;)Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable$1;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;

    invoke-static {v5}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->access$200(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/GifDecoder;->getDelay(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 105
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable$1;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/GifDrawable;->invalidateSelf()V

    return-void
.end method

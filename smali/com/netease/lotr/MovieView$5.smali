.class Lcom/netease/lotr/MovieView$5;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/MovieView;->pauseVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/MovieView;


# direct methods
.method constructor <init>(Lcom/netease/lotr/MovieView;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/netease/lotr/MovieView$5;->this$0:Lcom/netease/lotr/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/netease/lotr/MovieView$5;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v0}, Lcom/netease/lotr/MovieView;->access$300(Lcom/netease/lotr/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/netease/lotr/MovieView$5;->this$0:Lcom/netease/lotr/MovieView;

    iget-object v1, p0, Lcom/netease/lotr/MovieView$5;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v1}, Lcom/netease/lotr/MovieView;->access$300(Lcom/netease/lotr/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/lotr/MovieView;->access$402(Lcom/netease/lotr/MovieView;I)I

    .line 237
    iget-object v0, p0, Lcom/netease/lotr/MovieView$5;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v0}, Lcom/netease/lotr/MovieView;->access$300(Lcom/netease/lotr/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

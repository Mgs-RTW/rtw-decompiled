.class Lcom/netease/lotr/MovieView$6;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/MovieView;->resumeVideo()V
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

    .line 246
    iput-object p1, p0, Lcom/netease/lotr/MovieView$6;->this$0:Lcom/netease/lotr/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/netease/lotr/MovieView$6;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v0}, Lcom/netease/lotr/MovieView;->access$300(Lcom/netease/lotr/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/lotr/MovieView$6;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v0}, Lcom/netease/lotr/MovieView;->access$500(Lcom/netease/lotr/MovieView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/netease/lotr/MovieView$6;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v0}, Lcom/netease/lotr/MovieView;->access$300(Lcom/netease/lotr/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/lotr/MovieView$6;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v1}, Lcom/netease/lotr/MovieView;->access$400(Lcom/netease/lotr/MovieView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/netease/lotr/MovieView$6;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v0}, Lcom/netease/lotr/MovieView;->access$000(Lcom/netease/lotr/MovieView;)Lcom/netease/lotr/MovieDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lotr/MovieDialog;->show()V

    return-void
.end method

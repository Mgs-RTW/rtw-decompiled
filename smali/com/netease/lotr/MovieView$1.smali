.class Lcom/netease/lotr/MovieView$1;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/MovieView;->initialize()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/MovieView;

.field final synthetic val$movie_view:Lcom/netease/lotr/MovieView;


# direct methods
.method constructor <init>(Lcom/netease/lotr/MovieView;Lcom/netease/lotr/MovieView;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/netease/lotr/MovieView$1;->this$0:Lcom/netease/lotr/MovieView;

    iput-object p2, p0, Lcom/netease/lotr/MovieView$1;->val$movie_view:Lcom/netease/lotr/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/netease/lotr/MovieView$1;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v0}, Lcom/netease/lotr/MovieView;->access$000(Lcom/netease/lotr/MovieView;)Lcom/netease/lotr/MovieDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/netease/lotr/MovieView$1;->this$0:Lcom/netease/lotr/MovieView;

    new-instance v1, Lcom/netease/lotr/MovieDialog;

    iget-object v2, p0, Lcom/netease/lotr/MovieView$1;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v2}, Lcom/netease/lotr/MovieView;->access$100(Lcom/netease/lotr/MovieView;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/lotr/MovieView$1;->val$movie_view:Lcom/netease/lotr/MovieView;

    invoke-direct {v1, v2, v3}, Lcom/netease/lotr/MovieDialog;-><init>(Landroid/content/Context;Lcom/netease/lotr/MovieView;)V

    invoke-static {v0, v1}, Lcom/netease/lotr/MovieView;->access$002(Lcom/netease/lotr/MovieView;Lcom/netease/lotr/MovieDialog;)Lcom/netease/lotr/MovieDialog;

    .line 81
    iget-object v0, p0, Lcom/netease/lotr/MovieView$1;->this$0:Lcom/netease/lotr/MovieView;

    new-instance v1, Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/netease/lotr/MovieView$1;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v2}, Lcom/netease/lotr/MovieView;->access$100(Lcom/netease/lotr/MovieView;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/netease/lotr/MovieView;->access$202(Lcom/netease/lotr/MovieView;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;

    .line 82
    iget-object v0, p0, Lcom/netease/lotr/MovieView$1;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v0}, Lcom/netease/lotr/MovieView;->access$000(Lcom/netease/lotr/MovieView;)Lcom/netease/lotr/MovieDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/lotr/MovieView$1;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v1}, Lcom/netease/lotr/MovieView;->access$200(Lcom/netease/lotr/MovieView;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/lotr/MovieDialog;->setView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/netease/lotr/MovieView$1;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v0}, Lcom/netease/lotr/MovieView;->access$200(Lcom/netease/lotr/MovieView;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/lotr/MovieView$1;->val$movie_view:Lcom/netease/lotr/MovieView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    iget-object v0, p0, Lcom/netease/lotr/MovieView$1;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v0}, Lcom/netease/lotr/MovieView;->access$200(Lcom/netease/lotr/MovieView;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/netease/lotr/MovieView$1;->val$movie_view:Lcom/netease/lotr/MovieView;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    return-void
.end method

.class Lcom/netease/lotr/MovieView$2;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/MovieView;->show()V
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

    .line 135
    iput-object p1, p0, Lcom/netease/lotr/MovieView$2;->this$0:Lcom/netease/lotr/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/netease/lotr/MovieView$2;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v0}, Lcom/netease/lotr/MovieView;->access$000(Lcom/netease/lotr/MovieView;)Lcom/netease/lotr/MovieDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/netease/lotr/MovieView$2;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v0}, Lcom/netease/lotr/MovieView;->access$000(Lcom/netease/lotr/MovieView;)Lcom/netease/lotr/MovieDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lotr/MovieDialog;->show()V

    :cond_0
    return-void
.end method

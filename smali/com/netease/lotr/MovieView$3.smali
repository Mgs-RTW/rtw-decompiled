.class Lcom/netease/lotr/MovieView$3;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/MovieView;->setBounds(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/MovieView;

.field final synthetic val$fh:I

.field final synthetic val$fw:I

.field final synthetic val$fx:I

.field final synthetic val$fy:I


# direct methods
.method constructor <init>(Lcom/netease/lotr/MovieView;IIII)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/netease/lotr/MovieView$3;->this$0:Lcom/netease/lotr/MovieView;

    iput p2, p0, Lcom/netease/lotr/MovieView$3;->val$fx:I

    iput p3, p0, Lcom/netease/lotr/MovieView$3;->val$fy:I

    iput p4, p0, Lcom/netease/lotr/MovieView$3;->val$fw:I

    iput p5, p0, Lcom/netease/lotr/MovieView$3;->val$fh:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/netease/lotr/MovieView$3;->this$0:Lcom/netease/lotr/MovieView;

    invoke-static {v0}, Lcom/netease/lotr/MovieView;->access$000(Lcom/netease/lotr/MovieView;)Lcom/netease/lotr/MovieDialog;

    move-result-object v0

    iget v1, p0, Lcom/netease/lotr/MovieView$3;->val$fx:I

    iget v2, p0, Lcom/netease/lotr/MovieView$3;->val$fy:I

    iget v3, p0, Lcom/netease/lotr/MovieView$3;->val$fw:I

    iget v4, p0, Lcom/netease/lotr/MovieView$3;->val$fh:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/lotr/MovieDialog;->setBounds(IIII)V

    return-void
.end method

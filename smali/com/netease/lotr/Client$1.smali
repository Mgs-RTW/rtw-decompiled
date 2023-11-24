.class Lcom/netease/lotr/Client$1;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Client;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/Client;

.field final synthetic val$activityRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Client;Landroid/view/View;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/netease/lotr/Client$1;->this$0:Lcom/netease/lotr/Client;

    iput-object p2, p0, Lcom/netease/lotr/Client$1;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 338
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 340
    iget-object v1, p0, Lcom/netease/lotr/Client$1;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 341
    iget-object v1, p0, Lcom/netease/lotr/Client$1;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 342
    iget-object v2, p0, Lcom/netease/lotr/Client$1;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const-string v3, "G10_TAG"

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnGlobalLayout width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v3, p0, Lcom/netease/lotr/Client$1;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v3}, Lcom/netease/lotr/Client;->access$000(Lcom/netease/lotr/Client;)I

    move-result v3

    if-ne v3, v2, :cond_6

    iget-object v3, p0, Lcom/netease/lotr/Client$1;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v3}, Lcom/netease/lotr/Client;->access$100(Lcom/netease/lotr/Client;)I

    move-result v3

    if-eq v3, v1, :cond_0

    goto/16 :goto_0

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/netease/lotr/Client$1;->this$0:Lcom/netease/lotr/Client;

    invoke-virtual {v2}, Lcom/netease/lotr/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 356
    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_2

    return-void

    :cond_1
    if-ne v2, v4, :cond_2

    .line 363
    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_2

    return-void

    .line 369
    :cond_2
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    const/16 v0, 0x64

    if-le v1, v0, :cond_3

    .line 373
    invoke-static {v1}, Lcom/netease/neox/NativeInterface;->NativeOnVirtualKeyboardShown(I)V

    .line 374
    iget-object v0, p0, Lcom/netease/lotr/Client$1;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v0, v4}, Lcom/netease/lotr/Client;->access$202(Lcom/netease/lotr/Client;Z)Z

    goto :goto_1

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/netease/lotr/Client$1;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v0}, Lcom/netease/lotr/Client;->access$200(Lcom/netease/lotr/Client;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 381
    iget-object v0, p0, Lcom/netease/lotr/Client$1;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v0}, Lcom/netease/lotr/Client;->access$300(Lcom/netease/lotr/Client;)Lcom/netease/lotr/InputView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/lotr/Client$1;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v0}, Lcom/netease/lotr/Client;->access$300(Lcom/netease/lotr/Client;)Lcom/netease/lotr/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lotr/InputView;->isBorderless()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/netease/lotr/Client$1;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v0}, Lcom/netease/lotr/Client;->access$300(Lcom/netease/lotr/Client;)Lcom/netease/lotr/InputView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/lotr/InputView;->inputFinish(Z)V

    .line 383
    :cond_4
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnVirtualKeyboardHidden()V

    .line 385
    :cond_5
    iget-object v0, p0, Lcom/netease/lotr/Client$1;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v0, v1}, Lcom/netease/lotr/Client;->access$202(Lcom/netease/lotr/Client;Z)Z

    .line 386
    iget-object v0, p0, Lcom/netease/lotr/Client$1;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v0}, Lcom/netease/lotr/Client;->access$400(Lcom/netease/lotr/Client;)Lcom/netease/neox/NeoXView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 388
    iget-object v0, p0, Lcom/netease/lotr/Client$1;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v0}, Lcom/netease/lotr/Client;->access$400(Lcom/netease/lotr/Client;)Lcom/netease/neox/NeoXView;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/netease/neox/NeoXView;->delayedHide(I)V

    goto :goto_1

    .line 346
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/netease/lotr/Client$1;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v0, v2}, Lcom/netease/lotr/Client;->access$002(Lcom/netease/lotr/Client;I)I

    .line 347
    iget-object v0, p0, Lcom/netease/lotr/Client$1;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v0, v1}, Lcom/netease/lotr/Client;->access$102(Lcom/netease/lotr/Client;I)I

    const-string v0, "G10_TAG"

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeOnWindowSizeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lotr/Client$1;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v2}, Lcom/netease/lotr/Client;->access$000(Lcom/netease/lotr/Client;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lotr/Client$1;->this$0:Lcom/netease/lotr/Client;

    invoke-static {v2}, Lcom/netease/lotr/Client;->access$100(Lcom/netease/lotr/Client;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

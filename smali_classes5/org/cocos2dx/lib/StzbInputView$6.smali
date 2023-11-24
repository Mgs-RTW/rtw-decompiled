.class Lorg/cocos2dx/lib/StzbInputView$6;
.super Ljava/lang/Object;
.source "StzbInputView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/StzbInputView;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/StzbInputView;

.field final synthetic val$activityRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/StzbInputView;Landroid/view/View;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/cocos2dx/lib/StzbInputView$6;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    iput-object p2, p0, Lorg/cocos2dx/lib/StzbInputView$6;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 183
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 184
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView$6;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 185
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView$6;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 186
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    const/16 v2, 0xc8

    if-le v0, v2, :cond_0

    .line 190
    iget-object v2, p0, Lorg/cocos2dx/lib/StzbInputView$6;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-static {v2, v1, v0}, Lorg/cocos2dx/lib/StzbInputView;->access$600(Lorg/cocos2dx/lib/StzbInputView;II)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/StzbInputView$6;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-static {v0}, Lorg/cocos2dx/lib/StzbInputView;->access$700(Lorg/cocos2dx/lib/StzbInputView;)V

    :goto_0
    return-void
.end method

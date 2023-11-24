.class Lorg/cocos2dx/lib/StzbInputView$4$1;
.super Ljava/util/TimerTask;
.source "StzbInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/StzbInputView$4;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/StzbInputView$4;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/StzbInputView$4;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/cocos2dx/lib/StzbInputView$4$1;->this$1:Lorg/cocos2dx/lib/StzbInputView$4;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 155
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$000()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    .line 156
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 157
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView$4$1;->this$1:Lorg/cocos2dx/lib/StzbInputView$4;

    iget-object v1, v1, Lorg/cocos2dx/lib/StzbInputView$4;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-static {v1}, Lorg/cocos2dx/lib/StzbInputView;->access$500(Lorg/cocos2dx/lib/StzbInputView;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.class Lorg/cocos2dx/lib/StzbInputView$8;
.super Ljava/lang/Object;
.source "StzbInputView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/StzbInputView;->setActionId(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/StzbInputView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/StzbInputView;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lorg/cocos2dx/lib/StzbInputView$8;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 326
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$900()V

    .line 327
    iget-object p1, p0, Lorg/cocos2dx/lib/StzbInputView$8;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/StzbInputView;->destroy()V

    const/4 p1, 0x1

    return p1
.end method

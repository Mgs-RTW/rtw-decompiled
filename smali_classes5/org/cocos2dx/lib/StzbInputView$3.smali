.class Lorg/cocos2dx/lib/StzbInputView$3;
.super Ljava/lang/Object;
.source "StzbInputView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/StzbInputView;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/cocos2dx/lib/StzbInputView$3;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lorg/cocos2dx/lib/StzbInputView$3;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-static {p1}, Lorg/cocos2dx/lib/StzbInputView;->access$500(Lorg/cocos2dx/lib/StzbInputView;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Lorg/cocos2dx/lib/StzbInputView$3;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/StzbInputView;->onDestroy()V

    return-void
.end method

.class Lorg/cocos2dx/lib/StzbInputView$7;
.super Ljava/lang/Object;
.source "StzbInputView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    .line 201
    iput-object p1, p0, Lorg/cocos2dx/lib/StzbInputView$7;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 206
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$000()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    .line 207
    iget-object p4, p0, Lorg/cocos2dx/lib/StzbInputView$7;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-static {p4}, Lorg/cocos2dx/lib/StzbInputView;->access$800(Lorg/cocos2dx/lib/StzbInputView;)I

    move-result p4

    if-ne p4, p2, :cond_0

    .line 210
    iget-object p1, p0, Lorg/cocos2dx/lib/StzbInputView$7;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/StzbInputView;->destroy()V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p4, p0, Lorg/cocos2dx/lib/StzbInputView$7;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-static {p4}, Lorg/cocos2dx/lib/StzbInputView;->access$800(Lorg/cocos2dx/lib/StzbInputView;)I

    move-result p4

    if-ne p4, p3, :cond_1

    if-ne p1, p2, :cond_1

    .line 215
    iget-object p1, p0, Lorg/cocos2dx/lib/StzbInputView$7;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/StzbInputView;->destroy()V

    :cond_1
    :goto_0
    return-void
.end method

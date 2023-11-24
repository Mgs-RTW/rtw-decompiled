.class Lorg/cocos2dx/lib/StzbInputView$5;
.super Ljava/lang/Object;
.source "StzbInputView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    .line 163
    iput-object p1, p0, Lorg/cocos2dx/lib/StzbInputView$5;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 169
    iget-object p1, p0, Lorg/cocos2dx/lib/StzbInputView$5;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/StzbInputView;->destroy()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
